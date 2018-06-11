#!/bin/sh
SUBMODULE_PATH_TENSOR_FLOW="src/external/tensorflow"
SUBMODULE_PATH_TENSOR_SERV="src/external/tensorflow-serving"
DEST_SRC_PATH="src/main/proto"

function copy_proto_files()
{
  dest_path=$1
  src_path=$2
  cd ${src_path}
  proto_files=`find . | grep -P '\.proto$'`
  cd -
  for file in ${proto_files}
  do
    echo ${file}
    sub_file_path=`echo ${file} | awk 'BEGIN{FS=OFS="/";}{seg=$2; for(i=3; i<NF; ++i){seg=seg"/"$i;}}END{print seg;}'`
    sub_file_name=`echo ${file} | awk 'BEGIN{FS=OFS="/";}{print $NF;}'`
    src_file_name=${src_path}/${sub_file_path}/${sub_file_name} 
    dest_file_path=${dest_path}/${sub_file_path}
    if [ ! -f ${dest_file_path} ]
    then
      mkdir -p ${dest_file_path}
    fi
    cp ${src_file_name} ${dest_file_path}
  done
}

copy_proto_files ${DEST_SRC_PATH} ${SUBMODULE_PATH_TENSOR_FLOW}
copy_proto_files ${DEST_SRC_PATH} ${SUBMODULE_PATH_TENSOR_SERV}
