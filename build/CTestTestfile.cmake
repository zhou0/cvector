# CMake generated Testfile for
# Source directory: /app
# Build directory: /app/build
#
# This file includes the relevant testing commands required for
# testing this directory and lists subdirectories to be tested as well.
add_test(CVectorBasicTest "/app/build/bin/CVectorBasicTest" "CVectorBasicTest.lst")
set_tests_properties(CVectorBasicTest PROPERTIES  _BACKTRACE_TRIPLES "/app/CMakeLists.txt;164;add_test;/app/CMakeLists.txt;0;")
add_test(cmp-CVectorBasicTest_orig.lst-CVectorBasicTest.lst "/usr/bin/cmake" "-E" "compare_files" "/app/CVectorBasicTest_orig.lst" "CVectorBasicTest.lst")
set_tests_properties(cmp-CVectorBasicTest_orig.lst-CVectorBasicTest.lst PROPERTIES  _BACKTRACE_TRIPLES "/app/CMakeLists.txt;165;add_test;/app/CMakeLists.txt;0;")
