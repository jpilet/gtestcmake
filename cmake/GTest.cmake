
# gtest.

include(ExternalProject)

ExternalProject_Add(gtest_ext
        SVN_REPOSITORY "http://googletest.googlecode.com/svn/tags/release-1.7.0"
        BINARY_DIR "${CMAKE_BINARY_DIR}/third-party/gtest-build"
        SOURCE_DIR "${CMAKE_BINARY_DIR}/third-party/gtest-src"
        CMAKE_ARGS "${gtest_cmake_args}"
        UPDATE_COMMAND ""
        INSTALL_COMMAND ""
        )

enable_testing()
include_directories("${CMAKE_BINARY_DIR}/third-party/gtest-src/include")
link_directories("${CMAKE_BINARY_DIR}/third-party/gtest-build")

function(cxx_test name sources)
    add_executable(${name} ${sources})
    target_link_libraries(${name} ${ARGN} gtest)
    add_dependencies(${name} gtest_ext)
    # Working directory: where the dlls are installed.
    add_test(NAME ${name} 
             COMMAND ${name} "--gtest_break_on_failure")
endfunction()
