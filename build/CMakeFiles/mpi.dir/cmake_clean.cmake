FILE(REMOVE_RECURSE
  "CMakeFiles/mpi.dir/mpi.f.o"
  "libmpi.pdb"
  "libmpi.dylib"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang Fortran)
  INCLUDE(CMakeFiles/mpi.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
