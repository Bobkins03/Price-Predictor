#!/bin/bash

# Navigate to the project directory 
cd /Users/gio/vs_code/Price_Predictors    # Replace this with the project path on your device

# Create Python environment
mkdir -p env
conda create --prefix ./env python=3.10 -y
source activate ./env
conda install tensorflow pandas numpy plotly -y

# Verify pip path
pip_path=$(which pip)
# Replace everything before /env/bin/pip with the project path on your device
expected_path="/Users/gio/vs_code/Price_Predictors/env/bin/pip"            

if [ "$pip_path" != "$expected_path" ]; then
# Replace everything before /env/bin/:$PATH with the project path on your device
    export PATH="/Users/gio/vs_code/Price_Predictors/env/bin:$PATH"
fi

# Install dependencies using pip
pip install alpaca_trade_api nltk yfinance

# Install qt
brew install qt

# Run project.cpp
mkdir -p build
cd build
cmake .. && make
./project
