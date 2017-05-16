#!/usr/bin/env bash

apt-get update
apt-get install -y curl

# install docker
curl -sSL https://get.docker.com | sh

# setup users
useradd jenkins
usermod -aG docker jenkins
usermod -aG docker vagrant

docker build -t jenkinsdocker ./jenkinsdocker

# start jenkins with proper command line args
docker run -itd --name jenkinsdocker -p 8080:8080 -p 50000:50000 \
                      -v /vagrant/jenkins_home:/var/jenkins_home \
                      -v /var/run/docker.sock:/var/run/docker.sock
                      jenkinsdocker
