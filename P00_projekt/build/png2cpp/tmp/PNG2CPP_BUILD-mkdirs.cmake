# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "C:/Users/di461643/MicroControllTechnik/YAHAL/tools/png2cpp"
  "C:/Users/di461643/MicroControllTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/build/png2cpp"
  "C:/Users/di461643/MicroControllTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/build/png2cpp"
  "C:/Users/di461643/MicroControllTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/build/png2cpp/tmp"
  "C:/Users/di461643/MicroControllTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/build/png2cpp/src/PNG2CPP_BUILD-stamp"
  "C:/Users/di461643/MicroControllTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/build/png2cpp/src"
  "C:/Users/di461643/MicroControllTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/build/png2cpp/src/PNG2CPP_BUILD-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "C:/Users/di461643/MicroControllTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/build/png2cpp/src/PNG2CPP_BUILD-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "C:/Users/di461643/MicroControllTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/build/png2cpp/src/PNG2CPP_BUILD-stamp${cfgdir}") # cfgdir has leading slash
endif()
