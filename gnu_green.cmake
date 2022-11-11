set(NETCDF_C_PATH "/opt/homebrew/opt/netcdf")
set(NETCDF_FORTRAN_PATH "/opt/homebrew/opt/netcdf-fortran")

# These LDFLAGS provide lapack and blas support on a Mac. This may require installation of
# the Apple Developer Tools.
string(APPEND LDFLAGS " -framework Accelerate")

# Trying to produce a backtrace leads to a hang, so don't even try
string(APPEND CFLAGS " -fno-backtrace")
string(APPEND FFLAGS " -fno-backtrace")

# This is needed to run the Fortran unit tests;
# this isn't needed to build and run CESM.
if (MPILIB STREQUAL mpi-serial AND NOT compile_threaded)
  set(PFUNIT_PATH "/usr/local/pfunit/pfunit3.3.3-serial-gfortran11.3.0")
endif()

# Most of the following paths aren't necessary on my machine because I have my PATH set so
# that the right compilers are picked up by default. But it doesn't hurt to be explicit.
set(SFC "/opt/homebrew/bin/gfortran")
set(SCC "/usr/bin/gcc")
set(SCXX "/usr/bin/g++")
set(MPIFC "/opt/homebrew/bin/mpif90")
set(MPICC "/opt/homebrew/bin/mpicc")
set(MPICXX "/opt/homebrew/bin/mpic++")
