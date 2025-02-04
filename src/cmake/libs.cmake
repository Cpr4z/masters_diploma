message(STATUS "Loading libraries...")

# -----Boost-----
find_package(Boost REQUIRED)
if (Boost_FOUND)
    message(STATUS "Boost найден: ${Boost_INCLUDE_DIRS}")
    include_directories(${Boost_INCLUDE_DIRS})
else ()
    message(FATAL_ERROR "Boost не найден!")
endif ()


# -----nlohmann/json-----
find_package(nlohmann_json REQUIRED)
if (nlohmann_json_Found)
    message(STATUS "nlohmann_json найден")
    include_directories(${nlohman_json_INCLUDE_DIRS})
else ()
    message(FATAL_ERROR "nlohmann_json не найден!")
endif()

# -----Google Test------
find_package(GTest REQUIRED)
if (GTest_Found)
    message(STATUS "Google Test найден!")
    include_directories(${GTEST_INCLUDE_DIRS})
else ()
    message(FATAL_ERROR "Google Test не найден!")
endif ()


# -----gRPC-----
find_package(gRPC CONFIG REQUIRED)
if (gRPC_FOUND)
    message(STATUS "gRPC найден")
    include_directories(${gRPC_INCLUDE_DIRS})
else ()
    message()
endif ()