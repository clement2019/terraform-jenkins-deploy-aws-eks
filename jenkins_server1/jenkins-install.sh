#!/bin/bash

# install jenkins on amazon linux in aws
sudo dnf update
sudo dnf install java-17-amazon-corretto -y

java -version

Step 2: Install Java Development Kit (JDK)

sudo dnf install java-17-amazon-corretto -y

java -version

Step 3: Add Jenkins Repository
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

Step 4: Import Jenkins Repository Key
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

Step 5: Install Jenkins
sudo dnf install jenkins
Step 6: Start and Enable Jenkins Service
sudo systemctl start jenkins
sudo systemctl enable jenkin

# then install git
sudo yum install git -y

#then install terraform
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform

#finally install kubectl
sudo curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.23.6/bin/linux/amd64/kubectl
sudo chmod +x ./kubectl
sudo mkdir -p $HOME/bin && sudo cp ./kubectl $HOME/bin/kubectl && export PATH=$PATH:$HOME/bin

# install kubectl on the EC2 instance

sudo curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.23.6/bin/linux/amd64/kubectl
sudo chmod +x ./kubectl
sudo mkdir -p $HOME/bin && sudo cp ./kubectl $HOME/bin/kubectl && export PATH=$PATH:$HOME/bin

## install aws cli on the jenkins server because of integration with aws 
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" 
sudo yum install unzip 
unzip awscliv2.zip 
sudo ./aws/install

#check the version

aws --version
## install eksctl we are going to be creating aws-eks on that jenkins server

curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp

sudo mv /tmp/eksctl /usr/local/bin

eksctl version
