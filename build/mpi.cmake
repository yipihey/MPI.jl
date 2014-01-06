
execute_process(COMMAND /Users/tabel/Research/codes/MPI.jl/build/make_f2c     OUTPUT_VARIABLE FTWOC)
execute_process(COMMAND /Users/tabel/Research/codes/MPI.jl/build/make_f_const OUTPUT_VARIABLE FCONS)
file(READ   ${SRC} MPI)
file(WRITE  ${DST} "module MPI
")
file(APPEND ${DST} "
")
file(APPEND ${DST} "import Base.*
")
file(APPEND ${DST} "
")
file(APPEND ${DST} "const libmpi = dlopen(\"${LIB}\")
")
file(APPEND ${DST} "
")
file(APPEND ${DST} ${FTWOC})
file(APPEND ${DST} "
")
file(APPEND ${DST} ${FCONS})
file(APPEND ${DST} "
")
file(APPEND ${DST} ${MPI})
file(APPEND ${DST} "end
")
