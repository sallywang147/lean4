file(REMOVE_RECURSE
  "lib/lean/libleancpp.a"
  "lib/lean/libleancpp.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/leancpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
