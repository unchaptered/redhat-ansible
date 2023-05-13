#!/bin/bash

if [ -z "$1" ]
then
    echo "Error: target1 is empty. Please provide a value."
    exit 1
fi

# 변수 선언
target1=$1

# inventory 파일 생성
echo "target1 ansible_host=$target1" > /etc/ansible/inventory.txt