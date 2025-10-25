#/bin/bash




projectName=$1
uplower="${projectName^^}"


if [[ "$(uname)" == "Darwin" ]]; then
    # macOS (BSD sed)
    sed -i '' "s/projectname/$projectName/g" CMakeLists.txt
    sed -i '' "s/PROJECTNAME/$uplower/g" CMakeLists.txt

    sed -i '' "s/projectname/$projectName/g" include/projectname/foo.h
    sed -i '' "s/PROJECTNAME/$uplower/g" include/projectname/foo.h
    sed -i '' "s/PROJECTNAME/$uplower/g" include/projectname/projectname_global.h

    sed -i '' "s/projectname/$projectName/g" src/foo.cpp


else
    # Linux (GNU sed)
    sed -i "s/projectname/$projectName/g" CMakeLists.txt
    sed -i "s/PROJECTNAME/$uplower/g" CMakeLists.txt

    sed -i "s/projectname/$projectName/g" include/projectname/foo.h
    sed -i "s/PROJECTNAME/$uplower/g" include/projectname/foo.h
    sed -i "s/PROJECTNAME/$uplower/g" include/projectname/projectname_global.h

    sed -i "s/projectname/$projectName/g" src/foo.cpp
fi

mv "cmake/projectnameConfig.cmake.in"  "cmake/${projectName}Config.cmake.in"
mv "include/projectname/projectname_global.h"  "include/projectname/${projectName}_global.h"
mv "include/projectname"  "include/${projectName}"

rm init.sh
rm -rf .git
git init


echo ""
echo ""
echo "don't forget rename project folder's name"
