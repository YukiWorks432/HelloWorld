cmake_minimum_required(VERSION 3.14.0)

set(CMAKE_CXX_COMPILER g++)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ../../)
set(CMAKE_BUILD_TYPE Release)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(HelloWorld CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
#set(CMAKE_AUTOMOC ON)
#set(CMAKE_AUTOUIC ON)
#set(CMAKE_AUTORCC ON)

set(Boost_USE_STATIC_LIBS OFF) 
set(Boost_USE_MULTITHREADED ON)  
set(Boost_USE_STATIC_RUNTIME OFF) 

find_package(Boost REQUIRED) 
find_package(OpenMP REQUIRED)
#find_package(Qt5 COMPONENTS Core REQUIRED)
#find_package(Qt5 COMPONENTS Gui REQUIRED)
#find_package(Qt5 COMPONENTS Widgets REQUIRED)
#find_package(HarfBuzz REQUIRED)

#file(GLOB_RECURSE CPP_FILES src/*.cpp)
#file(GLOB_RECURSE UI_FILES src/*.ui)

include_directories(src ${Boost_INCLUDE_DIRS} ${OpenMP_INCLUDE_DIRS})

#set(CMAKE_CXX_FLAGS "-O0 -g -gdwarf-2")
set(CMAKE_CXX_FLAGS "-Ofast -fopenmp -pthread -flto -mtune=native -march=native -ftree-vectorize -mfpmath=both -fexcess-precision=fast")

add_executable(${PROJECT_NAME}
	src/Source.cpp
	#${CPP_FILES}
	#${UI_FILES}
)

#target_link_libraries(${PROJECT_NAME} ${Boost_LIBRARIES} Qt5::Core Qt5::Gui Qt5::Widgets HarfBuzz stdc++fs)
target_link_libraries(${PROJECT_NAME} ${Boost_LIBRARIES})