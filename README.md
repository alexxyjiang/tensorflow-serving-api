# tensorflow-serving-api
Provide Java API for the Tensorflow Serving

## prerequisites
1. That's a maven managed project. You should have **maven** installed.
2. The Google ProtoBuf Compiler -- **protoc** is required.
3. The GRPC Java Plugin -- **protoc-gen-grpc-java** is required.

## how-to compile
```sh
# install protoc for maven
mvn install:install-file -DgroupId=com.google.protobuf -DartifactId=protoc -Dversion=${protoc.version} -Dpackaging=exe -Dfile=/path/to/file
# install protoc-gen-grpc-java for maven
mvn install:install-file -DgroupId=io.grpc -DartifactId=protoc-gen-grpc-java -Dversion=${grpc.version} -Dpackaging=exe -Dfile=/path/to/file
# copy proto code
sh initialize.sh
# compile java code
mvn clean compile
```
