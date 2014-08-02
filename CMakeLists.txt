cmake_minimum_required(VERSION 2.8)

include("cmake/GTest.cmake")

cxx_test(example_test example_test.cpp gtest_main)

cxx_test(gmock_example gmock_example.cpp gmock gtest_main)
