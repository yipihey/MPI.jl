FILE(REMOVE_RECURSE
  "CMakeFiles/mpijl-build"
  "mpi-build.jl"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/mpijl-build.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
