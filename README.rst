This repository contains the contents of my .cime directory on my Mac.

I have installed most required software using homebrew.

I have tested this with the cime Fortran unit tests, which I run using the
following command::

  tools/unit_testing/run_tests.py --machine roo2 --test-spec-dir=. --use-openmp --mpirun-command=mpirun --build-dir `mktemp -d ./unit_test_temp.XXXXXX`

I suspect that more changes would be needed to run system tests.
