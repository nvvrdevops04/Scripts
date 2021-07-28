#!/bin/bash
echo "installing JAVA"
apt install openjdk-11-jre-headless -y 
echo "First, add the repository key to the system:"
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
echo "Next, let’s append the Debian package repository address to the server’s sources.list:"
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
echo "After both commands have been entered, we’ll run update so that apt will use the new repository."
sudo apt update
echo "Finally, we’ll install Jenkins and its dependencies."
sudo apt install jenkins -y
apt install maven -y
service jenkins start 
service jenkins status
