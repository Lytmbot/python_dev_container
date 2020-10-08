#!/bin/bash

# work out of oscillot source code
cd src
python --version
which python

# start jupyter notebook
nohup jupyter notebook --no-browser --allow-root --ip=0.0.0.0 --port=8080 > jupyter_output.log &
sleep 1
input="jupyter_output.log"
while IFS= read -r line
do
  echo "$line"
done < "$input"
echo "Processes running jupyter notebook"
ps -ef| grep jupyter
cd ..