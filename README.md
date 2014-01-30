gtestcmake: GTest + CMake example
=================================

This project demonstrates a way of integrating gtest unit testing library in
cmake. The cmake configuratiion downloads gtest at compile time using
subversion. It then compiles the getest library and the unit test.

Features:
- No need for gtest to be installed on the system;
- No need to duplicate gtest sources in your project;
- Requires subversion.

Usage
-----

1. Copy cmake/GTest.cmake in your project

2. Add
    include("cmake/GTest.cmake")
   in your main CMakeLists.txt

3. For each test, add a line similar to:
    cxx_test(test_executable_name test_source.cpp libraries gtest_main)

