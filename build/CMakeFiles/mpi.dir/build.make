# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/2.8.12.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/2.8.12.1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/local/Cellar/cmake/2.8.12.1/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/tabel/Research/codes/MPI.jl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/tabel/Research/codes/MPI.jl/build

# Include any dependencies generated for this target.
include CMakeFiles/mpi.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/mpi.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mpi.dir/flags.make

CMakeFiles/mpi.dir/mpi.f.o: CMakeFiles/mpi.dir/flags.make
CMakeFiles/mpi.dir/mpi.f.o: ../mpi.f
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/tabel/Research/codes/MPI.jl/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building Fortran object CMakeFiles/mpi.dir/mpi.f.o"
	/usr/local/bin/gfortran  $(Fortran_DEFINES) $(Fortran_FLAGS) -c /Users/tabel/Research/codes/MPI.jl/mpi.f -o CMakeFiles/mpi.dir/mpi.f.o

CMakeFiles/mpi.dir/mpi.f.o.requires:
.PHONY : CMakeFiles/mpi.dir/mpi.f.o.requires

CMakeFiles/mpi.dir/mpi.f.o.provides: CMakeFiles/mpi.dir/mpi.f.o.requires
	$(MAKE) -f CMakeFiles/mpi.dir/build.make CMakeFiles/mpi.dir/mpi.f.o.provides.build
.PHONY : CMakeFiles/mpi.dir/mpi.f.o.provides

CMakeFiles/mpi.dir/mpi.f.o.provides.build: CMakeFiles/mpi.dir/mpi.f.o

# Object files for target mpi
mpi_OBJECTS = \
"CMakeFiles/mpi.dir/mpi.f.o"

# External object files for target mpi
mpi_EXTERNAL_OBJECTS =

libmpi.dylib: CMakeFiles/mpi.dir/mpi.f.o
libmpi.dylib: CMakeFiles/mpi.dir/build.make
libmpi.dylib: /usr/local/Cellar/open-mpi/1.7.3/lib/libmpi_usempi.a
libmpi.dylib: /usr/local/Cellar/open-mpi/1.7.3/lib/libmpi_mpifh.dylib
libmpi.dylib: /usr/local/Cellar/open-mpi/1.7.3/lib/libmpi.dylib
libmpi.dylib: CMakeFiles/mpi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking Fortran shared library libmpi.dylib"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mpi.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mpi.dir/build: libmpi.dylib
.PHONY : CMakeFiles/mpi.dir/build

CMakeFiles/mpi.dir/requires: CMakeFiles/mpi.dir/mpi.f.o.requires
.PHONY : CMakeFiles/mpi.dir/requires

CMakeFiles/mpi.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mpi.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mpi.dir/clean

CMakeFiles/mpi.dir/depend:
	cd /Users/tabel/Research/codes/MPI.jl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tabel/Research/codes/MPI.jl /Users/tabel/Research/codes/MPI.jl /Users/tabel/Research/codes/MPI.jl/build /Users/tabel/Research/codes/MPI.jl/build /Users/tabel/Research/codes/MPI.jl/build/CMakeFiles/mpi.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mpi.dir/depend
