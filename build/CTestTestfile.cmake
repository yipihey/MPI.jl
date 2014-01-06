# CMake generated Testfile for 
# Source directory: /Users/tabel/Research/codes/MPI.jl
# Build directory: /Users/tabel/Research/codes/MPI.jl/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(test_bcast.jl_np:2 "/usr/local/bin/mpiexec" "-np" "2" "/Users/tabel/Research/codes/MPI.jl/build/juliampi-build" "/Users/tabel/Research/codes/MPI.jl/test/run_test.jl" "/Users/tabel/Research/codes/MPI.jl/test/test_bcast.jl")
ADD_TEST(test_reduce.jl_np:2 "/usr/local/bin/mpiexec" "-np" "2" "/Users/tabel/Research/codes/MPI.jl/build/juliampi-build" "/Users/tabel/Research/codes/MPI.jl/test/run_test.jl" "/Users/tabel/Research/codes/MPI.jl/test/test_reduce.jl")
ADD_TEST(test_sendrecv.jl_np:2 "/usr/local/bin/mpiexec" "-np" "2" "/Users/tabel/Research/codes/MPI.jl/build/juliampi-build" "/Users/tabel/Research/codes/MPI.jl/test/run_test.jl" "/Users/tabel/Research/codes/MPI.jl/test/test_sendrecv.jl")
ADD_TEST(test_bcast.jl_np:5 "/usr/local/bin/mpiexec" "-np" "5" "/Users/tabel/Research/codes/MPI.jl/build/juliampi-build" "/Users/tabel/Research/codes/MPI.jl/test/run_test.jl" "/Users/tabel/Research/codes/MPI.jl/test/test_bcast.jl")
ADD_TEST(test_reduce.jl_np:5 "/usr/local/bin/mpiexec" "-np" "5" "/Users/tabel/Research/codes/MPI.jl/build/juliampi-build" "/Users/tabel/Research/codes/MPI.jl/test/run_test.jl" "/Users/tabel/Research/codes/MPI.jl/test/test_reduce.jl")
ADD_TEST(test_sendrecv.jl_np:5 "/usr/local/bin/mpiexec" "-np" "5" "/Users/tabel/Research/codes/MPI.jl/build/juliampi-build" "/Users/tabel/Research/codes/MPI.jl/test/run_test.jl" "/Users/tabel/Research/codes/MPI.jl/test/test_sendrecv.jl")
