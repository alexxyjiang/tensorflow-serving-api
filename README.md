# tensorflow-serving-api
Provide Java API for the Tensorflow Serving

## prerequisites
1. That's a maven managed project. You should have **maven** installed.
2. The Google ProtoBuf Compiler -- **protoc** is required.
3. The GRPC Java Plugin -- **protoc-gen-grpc-java** is required.

## how-to compile
```sh
# checkout source code
git submodule update --init --remote --recursive
# copy proto code
sh initialize.sh
# compile java code
mvn clean compile
```
