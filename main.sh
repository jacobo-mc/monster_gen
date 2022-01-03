cd src/
find . -name "*.class" -type f -delete
cd ..
mkdir temp
cd temp
cp -r ../src/* .
find -name "*.java" > sources.txt
javac @sources.txt
zip -r bin.jar ./*
cd ..
mkdir bin
mv temp/bin.jar bin
rm -rf temp