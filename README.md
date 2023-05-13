# Redhat Ansible

## Get Started

### Ansible Inventory 실행하는 법

1. 도커 이미지 빌드

```
docker build --build-arg TARGET_VALUE=<Public 아이피> -t redhat-ansible .
```

2. 도커 이미지 실행

```
docker run --env-file .docker.env -t -i redhat-ansible
```

3. ansible ping 실행

```
cd /etc/ansible
ansible target1 -m ping -i inventory.txt --private-key <EC2 PEM 키 주소(절대주소)> -u <EC2 유저 이름>
yes
```