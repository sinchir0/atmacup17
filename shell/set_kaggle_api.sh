#!/bin/bash
mkdir -p ~/.kaggle/
cp env_file/kaggle.json ~/.kaggle/
chmod 600 ~/.kaggle/kaggle.json

pip install kaggle