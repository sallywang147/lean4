file(REMOVE_RECURSE
  "lib/temp/libleaninitialize.a"
  "lib/temp/libleaninitialize.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/leaninitialize.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
