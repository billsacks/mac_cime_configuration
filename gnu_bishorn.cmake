set(NETCDF_PATH "/usr/local")

# These LDFLAGS provide lapack and blas support on a Mac. This may require installation of
# the Apple Developer Tools.
string(APPEND LDFLAGS " -framework Accelerate")

# This is needed to run the Fortran unit tests;
# this isn't needed to build and run CESM.
if (MPILIB STREQUAL mpi-serial AND NOT compile_threaded)
  set(PFUNIT_PATH "/usr/local/pfunit/pfunit3.2.9-serial-gfortran8.2.0")
endif()

# The following paths aren't necessary on my machine because I have my PATH set so that
# the right compilers are picked up by default. But it doesn't hurt to be explicit.
set(SFC "/usr/local/bin/gfortran")
set(SCC "/usr/bin/clang")
set(SCXX "/usr/bin/clang++")
set(MPIFC "/usr/local/bin/mpif90")
set(MPICC "/usr/local/bin/mpicc")
set(MPICXX "/usr/local/bin/mpic++")
