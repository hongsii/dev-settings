#! /bin/bash

# Check installed git
if ! [ -x "$(command -v git)" ]; then
    echo "you must install git !"
fi

# Notificate alias
alias_command=local-git
if [ `alias | grep which | wc -l` == 0 ]; then
    echo "Add alias for easy use"
    echo "$ alias $alias_command=`pwd`/`basename $0`"
fi

# Check current directory
git_dir=$1
if ! [ $git_dir ]; then
    git_dir=`pwd`
    echo -e "\n===== Current directory : $git_dir ====="
fi

# Set local config
username=hongsii
email=hongsii.dev@gmail.com

echo ""
echo "===== Set user.name ====="
git config --local --unset-all user.name
git config --local --add user.name $username
git config --local --list | grep "user.name"
echo "===== Set user.email ====="
git config --local --unset-all user.email
git config --local --add user.email $email
git config --local --list | grep "user.email"
