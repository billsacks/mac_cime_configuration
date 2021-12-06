set(NETCDF_PATH "/usr/local")

# TODO(wjs, 2021-12-06) Can I replace the following LDFLAGS lines with something like the
# line from CESM's gnu_homebrew.cmake?:
#     string(APPEND LDFLAGS " -framework Accelerate -Wl,-rpath $(NETCDF)/lib")
#
# or can I completely get rid of the inclusion of netcdf stuff in LDFLAGS now (or is it
# still needed for the unit test build)?
#
# I am waiting to test these possibilities until the pFUnit unit test build exclusively
# uses this file, allowing us to remove config_compilers.xml (currently
# config_compilers.xml is still needed, so I don't know what is coming from this file vs.
# config_compilers.xml in the unit test build, making it hard to ascertain whether a
# change definitely works: see https://github.com/ESMCI/cime/issues/4136).

# These LDFLAGS are only needed for the unit test build; the system build's Makefile
# automatically adds the necessary flags. (I haven't tested this since the conversion of
# config_compilers.xml to cmake macros: it's possible that this is no longer needed.)
string(APPEND LDFLAGS " -L/usr/local/lib -lnetcdff -lnetcdf")

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
