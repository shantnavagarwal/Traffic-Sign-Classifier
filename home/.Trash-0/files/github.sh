#!/bin/bash

#### 0- Initial Setup  ####
# Change python Path
export PATH=/usr/bin:$PATH
# Prompt for github username, and email
read -p 'Enter your GitHub username: ' username
read -p 'Enter your GitHub email: ' email
read -p 'Enter your repository url: ' remote
# Prompt for github password and hide the characters
stty -echo
read -p 'Enter your GitHub password: ' pass; echo 
stty echo
# Encode the password 
source ./urlencode.sh
password="$(urlencode $pass)"
# Config GitHub username and email
git config --global user.name $username
git config --global user.email $email
git remote set-url origin $remote
