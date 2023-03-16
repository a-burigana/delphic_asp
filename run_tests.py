import sys, os, subprocess, time, pathlib

# RUN TESTS AS FOLLOWS:
#  >> python run_tests.py exp/

def main(argv):
    for instance in sorted(pathlib.Path(argv[0]).rglob('*instance*.lp')):
        test_instance(str(instance))
    
def test_instance(instance):
    sleep_time = 10

    print('\n#################### RUNNING INSTANCE ' + instance + ' ####################\n')

    test_instance_with_semantics(instance, 'delphic')
    time.sleep(sleep_time)
    
    test_instance_with_semantics(instance, 'kripke')
    time.sleep(sleep_time)

def test_instance_with_semantics(instance, semantics):
    ret = subprocess.call('python delphic.py -i ' + instance + ' -s ' + semantics + ' --test', shell=True)
    
    if (ret != 0):
        dir      = os.path.dirname(instance)
        test_dir = 'out' + os.sep + 'tests' + os.sep + dir
        csv_file = test_dir + os.sep + 'results_' + semantics + '.csv'

        if (not os.path.exists(test_dir)):
            os.makedirs(test_dir, exist_ok=True)

        exists_file = os.path.isfile(csv_file)
        output_file = open(csv_file, 'a')

        if (not exists_file):
            print('instance,time,atoms', end = '\n', file = output_file)

        inst_name = os.path.splitext(os.path.basename(instance))[0]
        print(inst_name, end = ',',  file = output_file)
        print('t.o.',    end = ',',  file = output_file)
        print('-',       end = '\n', file = output_file)
    
        output_file.close()

        print(semantics + ' time:  t.o.')
        print(semantics + ' atoms: -')
        print('\n')
    
if __name__ == '__main__':
    main(sys.argv[1:])
