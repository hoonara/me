#!/bin/bash

#GO_VERSION=go1.12.5
#COSMOS_VERSION=v0.35.0

run () {
   
    echo "Update the list of available software packages"
    sudo apt-get update

    echo "Install cURL package"
    sudo apt-get install --yes curl
    
    echo "Get the official Docker installation script"
    curl -fsSL get.docker.com -o ${HOME}/get-docker.sh
    
    echo "Install Docker" 
    sudo sh ${HOME}/get-docker.sh
    
    echo "Add user to Docker group" 
    sudo usermod -aG docker $(whoami)
    
    echo "Reboot the machine"
    sudo reboot now
    
    
    
    #export GOPATH=$HOME/go
    #export GOBIN=$GOPATH/bin
    #export PATH=$PATH:$GOBIN:/usr/local/go/bin

    #echo "Installing cosmos-sdk"

    #mkdir -p $GOPATH/src/github.com/cosmos
    #cd $GOPATH/src/github.com/cosmos
    #git clone https://github.com/cosmos/cosmos-sdk
    #cd cosmos-sdk && git checkout $COSMOS_VERSION
    #make tools install

    #gaiad version --long
    #gaiacli version --long

    #gaiacli config node mcv-sentry-1.mycosmosvalidator.com:26657
    #gaiacli config trust-node true
    #gaiacli config chain-id cosmoshub-2


    #echo "Gaiacli and Gaiad successfully installed"
    #echo ""
    #echo ""
    #echo "NOTE PLEASE RUN"
    #echo ""
    #echo "source ~/.bashrc"
    #echo ""
    #echo "to refresh your paths"
    #echo ""
    #echo ""
    #echo "For more information and help on how to use gaiacli to send transactions and delegate, please visit https://mycosmosvalidator.com"
    #echo ""
    #echo "Try running gaiacli status to see the current status of the cosmos network"
    #echo ""



}

run
