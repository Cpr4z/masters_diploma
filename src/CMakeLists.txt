cmake_minimum_required(VERSION 3.29)
project(Diplom)

include(${CMAKE_BINARY_DIR}/conan_toolchain.cmake)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_BINARY_DIR})

include(cmake/libs.cmake)

add_subdirectory(base)
add_subdirectory(benchmarks)
add_subdirectory(generation_lib)
add_subdirectory(models)
add_subdirectory(network_lib)
add_subdirectory(tests)

target_link_libraries(Diplom PRIVATE Boost::Boost nlohmann_json::nlohmann_json gRPC::grpc GTest::GTest)