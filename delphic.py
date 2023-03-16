import sys, os, clingo, subprocess
from typing           import Optional
from sortedcontainers import SortedSet, SortedDict
from clingo           import Function, Number, SolveResult


def main(argv):
    (clingo_args, clingo_files) = parse_arguments(argv)
    app_name = 'delphic - built on clingo'
    clingo.clingo_main(Application(app_name), clingo_files + clingo_args)

def parse_arguments(argv):
    global out_graphviz_path
    global out_tests_path
    global print_states_
    global print_tests_
    global semantics

    config    = 'search'
    semantics = 'delphic'

    clingo_args    = ['-t 2', '--configuration=frumpy']
    instance_file  = ''
    domain_file    = ''

    print_states_ = False
    print_tests_  = False

    time_limit    = 600     # seconds

    i = 0
    n = len(argv)

    while i < n:
        opt = argv[i]
        i  += 1

        if opt in ('-h', '--help'):
            print('Usage: python delphic.py -i|--instance <path' + os.sep + 'to' + os.sep + 'instance>')
            sys.exit()
        elif opt in ('-i', '--instance'):
            instance_file = argv[i]
            domain_file   = os.path.dirname(instance_file) + os.sep + 'domain.lp'
            i += 1
        elif opt in ('-s', '--semantics'):
            if (argv[i] != 'delphic' and argv[i] != 'kripke'):
                print('Error: unknown semantics')
                sys.exit()
            else:
                semantics = argv[i]
            i += 1
        elif opt in ('-d', '--debug'):
            config = 'debug'
        elif opt in ('-p', '--print'):
            print_states_ = True
        elif opt == '--test':
            print_tests_ = True
            clingo_args.append('--time-limit=' + str(time_limit))
            # clingo_args.append('--verbose=0')
        else:
            clingo_args.append(opt)
    
    if (instance_file == ''):
        print('Missing input instance')
        sys.exit()
    
    config_file    = 'run_config' + os.sep + config    + '.lp'
    semantics_file = 'semantics'  + os.sep + semantics + '.lp'

    if (print_states_):
        out_graphviz_path = 'out' + os.sep + 'graphviz' + os.sep + instance_file

    if (print_tests_):
        out_tests_path = 'out' + os.sep + 'tests' + os.sep + instance_file
    
    clingo_files = [config_file, semantics_file, domain_file, instance_file]

    return (clingo_args, clingo_files)



#############################################################
#                                                           #
#                 CLINGO MULTI-SHOT SOLVING                 #
#                                                           #
#############################################################



class Application:
    def __init__(self, name):
        self.program_name = name

    def main(self, ctl, files):
        if len(files) > 0:
            for f in files:
                ctl.load(f)
        else:
            ctl.load('-')

        step = 0
        ret: Optional[SolveResult] = None

        total_time  = 0.0
        interrupted = False

        while (step == 0 or not ret.satisfiable):
            parts = []
            parts.append(('check', [Number(step)]))

            if step > 0:
                ctl.release_external(Function('query', [Number(step - 1)]))
                parts.append(('step', [Number(step)]))
                ctl.cleanup()
            else:
                parts.append(('base', []))

            ctl.ground(parts)
            ctl.assign_external(Function('query', [Number(step)]), True)

            try:
                ret = ctl.solve(on_model=print_states)
            except RuntimeError:
                ctl.interrupt()
                interrupted = True
                break
            step += 1

            total_time += ctl.statistics['summary']['times']['total']
        
        atoms = ctl.statistics['problem']['lp']['atoms']
        print_tests(interrupted, total_time, atoms)



#############################################################
#                                                           #
#                PRINTING TEST RESULTS (CSV)                #
#                                                           #
#############################################################



def print_tests(interrupted, total_time, atoms):
    if (not print_tests_):
        return

    dir  = os.path.dirname(out_tests_path)
    file = os.path.splitext(os.path.basename(out_tests_path))[0]

    csv_file  = dir + os.sep + 'results_' + semantics + '.csv'

    if (not os.path.exists(dir)):
        os.makedirs(dir)
    
    exists_file = os.path.isfile(csv_file)
    output_file = open(csv_file, 'a')

    if (not exists_file):
        print('instance,time,atoms', end = '\n', file = output_file)

    output_time  = str(total_time) if not interrupted else 't.o.'
    output_atoms = str(int(atoms)) if not interrupted else '-'

    print(file,         end = ',',  file = output_file)
    print(output_time,  end = ',',  file = output_file)
    print(output_atoms, end = '\n', file = output_file)

    output_file.close()

    print(semantics + ' time:  ' + output_time)
    print(semantics + ' atoms: ' + output_atoms)
    print('\n')



#############################################################
#                                                           #
#          GRAPHICAL OUTPUT GENERATION (GRAPHVIZ)           #
#                                                           #
#############################################################



def print_states(m):
    if (not print_states_):
        return
    
    dir  = os.path.dirname(out_graphviz_path)
    file = os.path.splitext(os.path.basename(out_graphviz_path))[0] + '_' + semantics

    dot_file = dir + os.sep + file + '.dot'
    pdf_file = dir + os.sep + file + '.pdf'
    
    if (not os.path.exists(dir)):
        os.makedirs(dir)
    
    output_file = open(dot_file, 'w')

    all_worlds  = {s for s in m.symbols(atoms=True) if s.name == 'w'}

    states      = build_states(m, semantics, all_worlds)
    world_names = generate_world_names(all_worlds)
    atoms       = generate_atoms(m)
    labels      = [s.arguments[1].name for s in m.symbols(atoms=True) if s.name == 'plan']
    labels.insert(0, 's0')

    font = '"Helvetica,Arial,sans-serif"'

    print('digraph {',                       end = '\n', file = output_file)
    print('\tfontname='       + font + ';',  end = '\n', file = output_file)
    print('\tnode [fontname=' + font + '];', end = '\n', file = output_file)
    print('\tedge [fontname=' + font + '];', end = '\n', file = output_file)
    print('\tlabeljust=l;',                  end = '\n', file = output_file)
    print('\trankdir=BT;',                   end = '\n', file = output_file)
    print('\tranksep=1.5',                   end = '\n', file = output_file)
    print('\tnewrank=true;',                 end = '\n', file = output_file)
    # print('\tsize="3.5";',                   end = '\n', file = output_file)
    print('\tcompound=true;',                end = '\n', file = output_file)

    t = 0
    
    for s in states:
        label = labels[t] if t == 0 else 's' + str(t) + ' = ' + 's' + str(t-1) + ' * ' + labels[t]
        print_cluster(semantics, states, t, world_names, atoms, label, output_file)
        t += 1
    
    print_rels(states, world_names, output_file)
    # print_cluster_rels(states, world_names, labels, output_file)
    print_vals(semantics, states, all_worlds, world_names, atoms, output_file)
    print('}', file = output_file)

    output_file.close()
    
    os.system('dot -Tpdf ' + dot_file + ' > ' + pdf_file)
    os.remove(dot_file)

    # Interrupting clingo search
    return False

def print_cluster(semantics, states, t, world_names, atoms, label, output_file):
    print('',                                   end = '\n',   file = output_file)
    print('\tsubgraph cluster_' + str(t)+ ' {', end = '\n',   file = output_file)
    print('\t\tlabel="' + label + '";',         end = '\n',   file = output_file)
    # print('\t\tlabel="s' + str(t) + '";',       end = '\n',   file = output_file)
    print('\t\tmargin=15;',                     end = '\n',   file = output_file)
    print('\t\tcolor=red;',                     end = '\n',   file = output_file)
    print('\t\tfontcolor=red;',                 end = '\n\n', file = output_file)

    s = states[t]
    
    print_worlds(semantics, t, s[0], s[3], world_names, s[1], output_file)
    print('', end ='\n', file = output_file)

    print('\t}', end ='\n', file = output_file)

def print_worlds(semantics, t, worlds, des, world_names, rels, output_file):
    ranked_worlds = SortedDict()
    
    for w in worlds:
        in_worlds  = {world_names[v] for v  in rels    for ag in rels[v] if w in rels[v][ag]}
        out_worlds = {world_names[v] for ag in rels[w] for v  in rels[w][ag]}
        
        same_rank_worlds = in_worlds.intersection(out_worlds)
        same_rank_worlds = list(same_rank_worlds)
        same_rank_worlds.sort()
        
        rank = str(t) + ''.join(same_rank_worlds)
        
        # rank = str(t) + w.arguments[2].name

        if (ranked_worlds.get(rank) == None):
            ranked_worlds[rank] = SortedSet({w})
        else:
            ranked_worlds[rank].add(w)

    for rank in ranked_worlds:
        has_des = False
        wr = ''
        
        for w in ranked_worlds[rank]:
            shape = ' [shape = doublecircle]' if (w in des) else ''
            has_des = w in des
            wr += world_names[w] + shape + '; '
        
        # print('\t\t' + wr, end = '\n', file = output_file)
        
        if (semantics == 'delphic'):
            if (has_des):
                print('\t\t' + '{ rank=source; ' + wr + '}', end = '\n', file = output_file)
            else:
                print('\t\t' + '{ rank=same; ' + wr + '}', end = '\n', file = output_file)
        else:
            print('\t\t' + wr, end = '\n', file = output_file)

def generate_pretty_rels(states):
    pretty_rels = SortedDict()
    
    for s in states:
        rels = s[1]

        for w1 in rels:
            w1_rels = rels[w1]
            
            for ag in w1_rels:
                ag_worlds = w1_rels[ag]
                
                for w2 in ag_worlds:
                    both_dir = w1 != w2 and rels.get(w2) != None and rels[w2].get(ag) != None and w1 in rels[w2][ag]

                    if (not both_dir or (both_dir and w1 < w2)):
                        if (pretty_rels.get((w1, w2)) == None):
                            pretty_rels[(w1, w2)] = SortedSet({(ag, both_dir)})
                        else:
                            pretty_rels[(w1, w2)].add((ag, both_dir))
    
    return pretty_rels

def print_rels(states, world_names, output_file):
    print('', end = '\n',  file = output_file)
    pretty_rels = generate_pretty_rels(states)
    
    for (w1, w2) in pretty_rels:
        ags = pretty_rels[(w1, w2)]

        label      = ''
        label_both = ''

        for (ag, both_dir) in ags:
            if (both_dir):
                label_both += ag + ', '
            else:
                label      += ag + ', '
        
        if (label != ''):
            print('\t' + world_names[w1] + ' -> ' + world_names[w2] + ' [label="' + label[0:-2]      + '"];',          end = '\n', file = output_file)

        if (label_both != ''):
            print('\t' + world_names[w1] + ' -> ' + world_names[w2] + ' [label="' + label_both[0:-2] + '" dir=both];', end = '\n', file = output_file)

def print_cluster_rels(states, world_names, labels, output_file):
    print('', end = '\n', file = output_file)
    
    for t in range(len(states)-1):
        s1   = states[t]
        s2   = states[t+1]
        des1 = s1[3]
        des2 = s2[3]

        wd1  = list(des1)[0]
        wd2  = list(des2)[0]

        # print('\t' + world_names[wd1] + ' -> ' + world_names[wd2] + ' [arrowhead="vee" label="' + labels[t] + '" color=red fontcolor=red];', end = '\n', file = output_file)
        print('\t' + world_names[wd1] + ' -> ' + world_names[wd2] + ' [arrowhead="vee" label="' + labels[t] + '" ltail=cluster_' + str(t) + ' lhead=cluster_' + str(t+1) + ' color=red fontcolor=red];', end = '\n', file = output_file)

def print_vals(semantics, states, all_worlds, world_names, atoms, output_file):
    print('',                                                                      end = '\n', file = output_file)
    print('\tnode [] val_table [shape=none label=<',                               end = '\n', file = output_file)
    print('\t\t<TABLE border="0" cellspacing="0" cellborder="1" cellpadding="2">', end = '\n', file = output_file)

    t = -1
    
    for s in states:
        t += 1
        val = s[2]
        
        for w in val:
            w_val = val[w]

            print('\t\t\t<TR>',                              end = '\n', file = output_file)
            print('\t\t\t\t<TD>' + world_names[w] + '</TD>', end = '\n', file = output_file)
            
            if (t == 0):
                print('\t\t\t\t<TD>-</TD>',                          end = '\n', file = output_file)
            else:
                old_w_args = w.arguments[1].arguments if semantics == 'delphic' else [Number(t-1)] + w.arguments[1].arguments
                old_w      = world_names[find_world(all_worlds, old_w_args)]
                e          = w.arguments[2].name

                print('\t\t\t\t<TD>(' + old_w + ', ' + e + ')</TD>', end = '\n', file = output_file)

            print('\t\t\t\t<TD>',                            end = '\n', file = output_file)

            for p in atoms:
                if (p in w_val):
                    print('\t\t\t\t\t<font color="blue"> ' + p + '</font>', end = '', file = output_file)
                else:
                    print('\t\t\t\t\t<font color="red">-'  + p + '</font>', end = '', file = output_file)
                
                sep = ', ' if atoms.index(p) < len(atoms)-1 else ''
                print(sep, end = '\n', file = output_file)

            print('\t\t\t\t</TD>', end = '\n', file = output_file)
            print('\t\t\t</TR>',   end = '\n', file = output_file)

    print('\t\t</TABLE>', end = '\n', file = output_file)
    print('\t>];',        end = '\n', file = output_file)

def generate_world_names(all_worlds):
    world_names = SortedDict()
    world_list  = list(all_worlds)
    world_list.sort()
    i = 0

    for w in world_list:
        world_names[w] = 'w' + str(i)
        i += 1
    
    return world_names

def generate_atoms(m):
    atoms = SortedSet()

    for s in m.symbols(atoms=True):
        if (s.name == 'atom'):
            atoms.add(s.arguments[0].name)
    
    return atoms

### States generation
def build_states(m, semantics, all_worlds):
    max_t  = max([s.arguments[0].number for s in m.symbols(atoms=True) if s.name == 'time'])
    states = []

    for t in range(max_t+1):
        states.append(build_state(m, semantics, t, all_worlds))

    return states

def build_state(m, semantics, t, all_worlds):
    r_symbols = SortedSet()
    h_symbols = SortedSet()
    worlds    = SortedSet()
    des       = SortedSet()

    for s in m.symbols(atoms=True):
        if (  s.name == 'w'  and s.arguments[0].number == t):
            worlds.add(s)
        elif (s.name == 'r'  and s.arguments[0].number == t):
            r_symbols.add(s)
        elif (s.name == 'v'  and s.arguments[0].number == t):
            h_symbols.add(s)
        elif (s.name == 'dw' and s.arguments[0].number == t):
            des.add(find_world(all_worlds, s.arguments))
    
    rels = build_rels(semantics, all_worlds, r_symbols)
    val  = build_val(worlds, h_symbols)

    return (worlds, rels, val, des)

def build_rels(semantics, worlds, r_symbols):
    rels = SortedDict()

    for s in r_symbols:
        w1 = find_world(worlds, s.arguments[0:3]) if semantics == 'delphic' else find_world(worlds, s.arguments[0:3])
        w2 = find_world(worlds, s.arguments[3:6]) if semantics == 'delphic' else find_world(worlds, [s.arguments[0]] + s.arguments[3:5])
        ag = s.arguments[6].name                  if semantics == 'delphic' else s.arguments[5].name

        w1_map = rels.get(w1)

        if (w1_map == None):
            rels[w1] = SortedDict({ag: SortedSet({w2})})
        else:
            ws = w1_map.get(ag)

            if (ws == None):
                w1_map[ag] = SortedSet({w2})
            else:
                ws.add(w2)

    return rels

def build_val(worlds, h_symbols):
    val = SortedDict()

    for s in h_symbols:
        w = find_world(worlds, s.arguments[0:3])
        p = s.arguments[3].name

        w_map = val.get(w)

        if (w_map == None):
            val[w] = SortedSet({p})
        else:
            val[w].add(p)

    for w in worlds:
        if (val.get(w) == None):
            val[w] = SortedSet()
    
    return val

def find_world(all_worlds, args):
    for w in all_worlds:
        if w.arguments == args:
            return w
    
    return None



#############################################################
#                                                           #
#                            MAIN                           #
#                                                           #
#############################################################



if __name__ == '__main__':
    main(sys.argv[1:])
