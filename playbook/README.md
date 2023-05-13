[< 돌아가기](../README.md)

# Ansible Playbook 실행하는 법

## Get Started

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

4. ansible playbook 실행

```
cd /redhat-ansbile
ansible-playbook playbook-pingtest.yaml -i /etc/ansible/inventory.txt --private-key <EC2 PEM 키 주소(절대 주소)> -u <EC2 유저 이름>
```

## Clean up

```sh
# Stop all containers
docker stop $(docker ps -a -q)

# Remove all containers
docker rm $(docker ps -a -q)

# Remove all images
docker rmi $(docker images -q) 
```