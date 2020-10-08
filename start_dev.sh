#!/bin/bash

# this will run after container has been built

# setup tmux
bash setup_scripts/setup_tmux.sh

# setup python env
bash setup_scripts/python_env.sh

# start jupyter notebook
kill $(pgrep jupyter)
bash setup_scripts/start_jupyter.sh

# test test
cd src
python hello_container.py