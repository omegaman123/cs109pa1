cmake_minimum_required(VERSION 3.13)
project(CS109PA1)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(CS109PA1
        bigint.cpp
        bigint.h
        debug.cpp
        debug.h
        HEADER.html
        iterstack.h
        libfns.cpp
        libfns.h
        Listing.pdf
        Listing.ps
        main.cpp
        Makefile
        relops.h
        scanner.cpp
        scanner.h
        ubigint.cpp
        ubigint.h
        util.cpp
        util.h
        ydc)
