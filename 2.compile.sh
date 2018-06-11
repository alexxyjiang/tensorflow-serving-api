#!/bin/sh
SRC_PATH="src/main/proto"
cd ${SRC_PATH}
FILES=`find . | grep -P '\.proto$'`
CURRENT_PATH=`pwd`
GRPC_PLUGIN="${CURRENT_PATH}/../../../../grpc-java/compiler/build/exe/java_plugin/protoc-gen-grpc-java"
JAVA_SRC_PATH="${CURRENT_PATH}/../java"
protoc -I=. --plugin=protoc-gen-grpc-java=${GRPC_PLUGIN} --grpc-java_out=${JAVA_SRC_PATH} --java_out=${JAVA_SRC_PATH} ${FILES}
cd -
