@echo off

echo Hello World!

cd ../


rmdir build\src /s /q
rmdir build\target /s /q
del build\pom.xml

xcopy  jira-holiday\src build\src /s /e /y /i
copy  jira-holiday\pom.xml build\pom.xml

cd build

dir

atlas-mvn package -DskipTests

pause