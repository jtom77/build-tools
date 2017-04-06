@echo off

echo Building clean %1

if not exist build mkdir build

rmdir build\src /s /q
rmdir build\target /s /q
del build\pom.xml

echo .%1\src

xcopy  .%1\src build\src /s /e /y /i
copy  .%1\pom.xml build\pom.xml

cd build

dir

atlas-mvn package -DskipTests