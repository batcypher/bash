#!/usr/bin/env bash
mkdir model/grammer_check
cd model/grammer_check

echo "Downloading Models:"
fileid="1bfFRMEnWywP_1jW-5z66FO9iVUfGoh6t"
filename="pytorch_model.bin"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

cd ../../
pwd
ls
echo "Running server"
echo "completed"
