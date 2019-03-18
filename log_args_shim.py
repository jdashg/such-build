#! /usr/bin/env python3
assert __name__ == '__main__'

import pathlib
import shlex
import subprocess
import sys

sub_argv = sys.argv[1:]

log_path = pathlib.Path.home() / 'log_args_shim.log'
args = [shlex.quote(x) for x in sub_argv]
args = ' '.join(args) + '\n'
args = args.encode()
with open(str(log_path), 'ab', buffering=0) as f:
    f.write(args)

p = subprocess.run(sub_argv)
exit(p.returncode)
