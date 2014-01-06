if(1 EQUAL 1)
  execute_process(
       COMMAND /usr/bin/git describe --tags --dirty
       WORKING_DIRECTORY ${WORKING_DIRECTORY}
       OUTPUT_VARIABLE GIT_DESCRIBE_VERSION
       RESULT_VARIABLE GIT_DESCRIBE_RESULT
       ERROR_VARIABLE GIT_DESCRIBE_ERROR
       OUTPUT_STRIP_TRAILING_WHITESPACE
   )
else(1 EQUAL 1)
  set(GIT_DESCRIBE_RESULT -1)
endif(1 EQUAL 1)

if(GIT_DESCRIBE_RESULT EQUAL 0)
  file(WRITE /Users/tabel/Research/codes/MPI.jl/VERSION "${GIT_DESCRIBE_VERSION}")
else(GIT_DESCRIBE_RESULT EQUAL 0)
  FILE(READ  /Users/tabel/Research/codes/MPI.jl/VERSION GIT_DESCRIBE_VERSION)
endif(GIT_DESCRIBE_RESULT EQUAL 0)

string(REGEX REPLACE "v([0-9]*)\\.([0-9]*)\\.(.*)"
       "\\1.\\2.\\3" VERSION "${GIT_DESCRIBE_VERSION}" )

string(REGEX REPLACE "v([0-9]*)\\.([0-9]*)\\.(.*)"
       "\\1" VERSION_MAJOR "${GIT_DESCRIBE_VERSION}")
string(REGEX REPLACE "v([0-9]*)\\.([0-9]*)\\.(.*)"
       "\\2" VERSION_MINOR "${GIT_DESCRIBE_VERSION}")
string(REGEX REPLACE "v([0-9]*)\\.([0-9]*)\\.(.*)"
       "\\3" VERSION_PATCH "${GIT_DESCRIBE_VERSION}")
