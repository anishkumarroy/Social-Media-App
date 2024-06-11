#!/bin/bash

# Ensure virtual environment is created and activated
python3 -m venv venv
source venv/bin/activate

# Install only necessary dependencies
pip3 install -r requirements.txt

# Collect static files
python3 manage.py collectstatic --noinput

# Deactivate virtual environment
deactivate
