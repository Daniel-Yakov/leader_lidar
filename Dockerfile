FROM jenkins/jenkins:lts-jdk11
USER root
RUN apt-get update -y && \
apt install docker.io -y && \
apt install docker-compose -y && \
usermod -aG docker jenkins && \
groupmod -g 999 docker
USER jenkins