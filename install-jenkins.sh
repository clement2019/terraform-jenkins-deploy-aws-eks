# Manual Installation of Jenkins on Amazon-linux
# Update System Packages

sudo dnf update
sudo dnf install java-17-amazon-corretto -y

java -version

#Install Java Development Kit (JDK)

sudo dnf install java-17-amazon-corretto -y

java -version

#Add Jenkins Repository
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

#mport Jenkins Repository Key
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

#Install Jenkins
sudo dnf install jenkins
#Start and Enable Jenkins Service
sudo systemctl start jenkins
sudo systemctl enable jenkins