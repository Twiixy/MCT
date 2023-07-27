# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "E:/MikrocontrollTechnik/YAHAL/tools/png2cpp"
  "E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/build/png2cpp"
  "E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/build/png2cpp"
  "E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/build/png2cpp/tmp"
  "E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/build/png2cpp/src/PNG2CPP_BUILD-stamp"
  "E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/build/png2cpp/src"
  "E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/build/png2cpp/src/PNG2CPP_BUILD-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/build/png2cpp/src/PNG2CPP_BUILD-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "E:/MikrocontrollTechnik/YAHAL/examples/msp432-launchpad/P00_projekt/build/png2cpp/src/PNG2CPP_BUILD-stamp${cfgdir}") # cfgdir has leading slash
endif()
