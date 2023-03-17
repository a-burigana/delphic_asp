# DELPHIC

An ASP implementation of the *DELPHIC* framework for Epistemic Planning.


## Installation

We made the installation of *DELPHIC* easy by using the *Conda* package management system. If you don't have *Conda* installed in your machine, please follow this [guide](https://docs.conda.io/projects/conda/en/latest/user-guide/install/index.html).

To install *DELPHIC*, move to the *DELPHIC* directory in your terminal and simply run the following command:

```bash
conda env create -f delphic.yml
```

This will take care of everything. All dependencies needed for the installation are specified in the YAML file `delphic.yml`. Before running *DELPHIC*, you only need to activate its Conda environment with the following command:

```bash
conda activate delphic
```


## Usage

We have implemented a Python script to use *DELPHIC* more practically from the command line. After showing its basic usage, we show the equivalent way of running the ASP programs by directly using *clingo* from the command line.

### Using *DELPHIC* via Python

To use *DELPHIC* via Python, use the following command:

```bash
python delphic.py -i <path/to/instance> [options]
```

When specifying the path of the desired instance, *DELPHIC* assumes that in the same directory is contained a file named `domain.lp`. *DELPHIC* automatically passes the domain file to *clingo*.

Moreover, by default, *DELPHIC* passes to *clingo* the file 'run_config/search.lp', which contains the ASP rules generating and testing actions. This can be changed with the debug option, as showed below.

#### Options:

1. `-s|--semantics <semantics>`: default value: '`delphic`'. Choose the semantics used for solving ('`delphic`' or '`kripke`').
2. `-d|--debug`: use debug mode to test a specific sequence of actions. The desired actions can be specified in the 'run_config/debug.lp' file. When debug mode is on, *DELPHIC* will include the ASP file 'run_config/debug.lp' instead of 'run_config/search.lp'.
3. `-p|--print`: print a graphical representation of the output (using the *graphviz* engine).
4. `--test`: print test results (total solving time and number of ground atoms).
5. `-h|--help`: print usage information.

All options that do not conform to this syntax are interpreted as *clingo* options. For instance, the command

```bash
python delphic.py -i exp/CB/instance__pl_5.lp -s kripke --time-limit=60
```

will pass `-i exp/CB/instance__pl_5.lp` and `-s kripke` to *DELPHIC* and `--time-limit=60` to *clingo*.

### Using *DELPHIC* via *clingo*

To use *DELPHIC* via *clingo*, one needs to pass the following files in the command line:
1. Path to `domain`
2. Path to `instance`
3. Running configuration (`search` or `debug`)
4. Semantics (`delphic` or `kripke`)

For instance, the following command

```bash
clingo exp/CB/domain.lp exp/CB/instance__pl_5.lp run_config/debug.lp semantics/delphic.lp
```

is equivalent to

```bash
python delphic.py -i exp/CB/instance__pl_5.lp --debug
```

Notice that printing and testing is *not* possible by directly using *clingo* in the command line, since these features are implemented by using the clingo API for Python.


## Contents

1. `delphic.py`: main Python script
2. `run_tests.py`: Python script for running tests on all instances of a given directory (usage: `python run_tests.py <path/to/dir>`)
3. `exp`: repository of all the benchmarks used for testing. The `exp/actions.lp` file is used to preprocess the input instances in order to generate an input format that is compatible with *DELPHIC*.
4. `modules`: contains the main components of the two encodings (truth conditions for formulae and update operators).
5. `run_config`: contains the supported configurations of the solver (search and debug).
6. `semantics`: contains ASP files to easily include the correct ASP files relative to a specific semantics.
