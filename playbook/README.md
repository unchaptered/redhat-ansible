[< 돌아가기](../README.md)

# Ansible Playbook 실행하는 법

## Get Started

1. 도커 이미지 빌드

```
docker build -t redhat-ansible .
```

2. 도커 이미지 실행

```
docker run --env-file .docker.env -t -i redhat-ansible
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