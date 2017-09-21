This repository contains the contents of my .cime directory on my Mac.

I have installed most required software using homebrew.

I have tested this with the cime Fortran unit tests, which I run using the
following command, run from the top level of cime::

  scripts/fortran_unit_testing/run_tests.py --build-dir `mktemp -d ./unit_test_temp.XXXXXX`

I have also tested the build of I compsets (CLM, MOSART, CISM).

I have not yet tried actually running the model.
