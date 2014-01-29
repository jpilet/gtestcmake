gtestcmake
==========

gtestcmake: GTest + CMake example
=================================

h
this project demonstrates a way of integrating gtest
Unit testing library in cmake. The cmake confoguratiion
downloads gtest at compile time using subverssiOn.
it then compiles getest and a unit test.
This way, the impact of gtest on the project is small
And it does not depend on gtest to be installed,
and gtest sources do not pollute the retested repository.


