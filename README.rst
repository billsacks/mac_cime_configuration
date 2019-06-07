This repository contains the contents of my .cime directory on my Mac.

I have installed most required software using homebrew.

I have tested this with the cime Fortran unit tests, which I run using the
following command, run from the top level of cime::

  scripts/fortran_unit_testing/run_tests.py --build-dir `mktemp -d ./unit_test_temp.XXXXXX`

I have also tested the build of I compsets (CLM, MOSART, CISM), and running I compsets
with CLM and MOSART (but so far I have only used SGLC rather than CISM in the tests that I
have run).

Note that, in order to get the job to launch, I needed to add the following line in
/etc/hosts::

  127.0.0.1       cgdm-bishorn

(where ``cgdm-bishorn`` is my machine's name, e.g., obtained via running ``hostname``;
without this line, I got an error that looked like: ``[0]
MPID_nem_tcp_init(384).............: gethostbyname failed, cgdm-bishorn (errno 1)``).

Here is a good test to run, which takes about 30 seconds to run (not counting build
time)::

  SMS_D_Ld1_P4x1.f10_f10_musgs.I2000Clm50BgcCropQianRsGs.bishorn_gnu.clm-default

(Note that running even this fairly minimal-data compset at this coarse resolution
requires downloading about 45 GB of data (mostly for datm forcings). Simply building the
model does *not* require downloading these data.)
