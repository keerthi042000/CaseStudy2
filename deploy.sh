#!/bin/bash

sudo apt update
# sudo apt install -y libgl1-mesa-glx libglib2.0-0 libsm6 libxrender1 libxext6 ffmpeg
sudo apt install -y libgl1-mesa-glx

cd ~/projects/
if [ -d "CaseStudy2" ]; then
    cd CaseStudy2 && git pull origin main
else
    git clone https://github.com/keerthi042000/CaseStudy2.git
fi

cd ~/projects
python3 -m venv CaseStudy2_venv
source python3 -m venv CaseStudy2_venv /bin/activate

pip install --upgrade pip
pip install -r ~/projects/CaseStudy2/requirements.txt

nohup python3 ~/projects/CaseStudy2/app.py > ~/projects/CaseStudy2.log 2>&1 &