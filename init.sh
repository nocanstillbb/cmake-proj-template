#/bin/bash




projectName=$1
uplower="${projectName^^}"
uplowerInital="${projectName^}"


# respace
if [[ "$(uname)" == "Darwin" ]]; then
    SED_INPLACE=(-i '')
else
    SED_INPLACE=(-i)
fi
sed "${SED_INPLACE[@]}" "s/PROJECTNAME/$uplower/g"  CMakeLists.txt
sed "${SED_INPLACE[@]}" "s/projectname/$projectName/g" CMakeLists.txt

sed "${SED_INPLACE[@]}" "s/PROJECTNAME/$uplower/g"  include/projectname/projectname_global.h

sed "${SED_INPLACE[@]}" "s/projectname/$projectName/g"  src/projectname.h
sed "${SED_INPLACE[@]}" "s/Projectname/$uplowerInital/g"  src/projectname.h
sed "${SED_INPLACE[@]}" "s/PROJECTNAME/$uplower/g"  src/projectname.h

sed "${SED_INPLACE[@]}" "s/projectname/$projectName/g"  src/projectname.cpp
sed "${SED_INPLACE[@]}" "s/Projectname/$uplowerInital/g"  src/projectname.cpp
sed "${SED_INPLACE[@]}" "s/PROJECTNAME/$uplower/g"  src/projectname.cpp

sed "${SED_INPLACE[@]}" "s/projectname/$projectName/g"  src/projectname.qrc

sed "${SED_INPLACE[@]}" "s/projectname/$projectName/g"  src/projectname/views/MainLinux.qml
sed "${SED_INPLACE[@]}" "s/projectname/$projectName/g"  src/projectname/views/MainMac.qml
sed "${SED_INPLACE[@]}" "s/projectname/$projectName/g"  src/projectname/views/MainWin.qml

# rename
mv "cmake/projectnameConfig.cmake.in"  "cmake/${projectName}Config.cmake.in"
mv "include/projectname/projectname_global.h"  "include/projectname/${projectName}_global.h"
mv "include/projectname"  "include/${projectName}"
mv "src/projectname.h"  "src/${projectName}.h"
mv "src/projectname.cpp"  "src/${projectName}.cpp"
mv "src/projectname.json"  "src/${projectName}.json"
mv "src/projectname.qrc"  "src/${projectName}.qrc"
mv "src/projectname"  "src/${projectName}"



#git
rm init.sh
rm -rf .git
git init


echo ""
echo ""
echo "don't forget rename project folder's name"
