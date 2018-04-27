#!/usr/bin/env bash



echo "------------------------------"
echo "Setting up pip."

# Install pip
easy_install pip

###############################################################################
# Virtual Enviroments                                                         #
###############################################################################

echo "------------------------------"
echo "Setting up virtual environments."

# Install Python data modules
pip install numpy
pip install scipy
pip install matplotlib
pip install pandas


