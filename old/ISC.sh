#!/bin/sh
#
#MAIN
#

#Docker?
which docker
if [ $? -eq 0 ]
then
    docker --version | grep "Docker version"
    if [ $? -eq 0 ]
    then
        echo "docker exists"
    else
        echo "install docker"
        install_docker
    fi
else
    echo "install docker"
    install_docker
fi






#Install docker
function install_docker() {

    sudo apt update -y
    sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
    sudo apt update -y
    apt-cache policy docker-ce
    sudo apt install docker-ce -y
    sudo service docker start
    sudo usermod -aG docker ${USER}

    #configure docker

}
echo "hello world" >/tmp/test1
