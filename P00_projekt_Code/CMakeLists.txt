cmake_minimum_required(VERSION 3.16)

# Set the target board
set(YAHAL_BOARD "msp432-launchpad")

# Locate the YAHAL library folder
include(YAHAL_import.cmake)

project(ski)

add_executable(ski
    ski.cpp
    gen/mario.cpp
	gen/stein.cpp
)

# Add YAHAL
yahal_add_me(ski)

# Add the uGUI library
yahal_add_library(ski uGUI)

# Generate cpp-file from png


png_to_cpp(ski
           png/mario.png 
           BG_COLOR    0x808000 
           OUTPUT_FILE gen/mario.cpp)
		   
png_to_cpp(ski
           png/stein.png 
           BG_COLOR    0x808000 
           OUTPUT_FILE gen/stein.cpp)



		   
		   
yahal_add_custom_targets(ski)
yahal_add_extra_outputs(ski)
