file(REMOVE_RECURSE
  "lib/temp/libleancpp_1.a"
  "lib/temp/libleancpp_1.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/leancpp_1.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
