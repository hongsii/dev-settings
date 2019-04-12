#! /bin/bash

username=hongsii
email=hongsii.dev@gmail.com

git_path=$1
cd $1
echo "change local config to username : $username / email : $email"
git config --local --add user.name $username
git config --local --add user.email $email
