#STEP-1: INSTALLING GIT JAVA-1.8.0 MAVEN
sudo apt update -y
apt install git maven -y

#STEP-2: GETTING THE REPO (jenkins.io --> download -- > redhat)
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
/etc/apt/sources.list.d/jenkins.list > /dev/null

#STEP-3: DOWNLOAD JAVA11 AND JENKINS
sudo apt-get update
sudo apt-get install fontconfig openjdk-17-jre
sudo apt-get install jenkins

#STEP-4: RESTARTING JENKINS (when we download service it will on stopped state)
systemctl status jenkins.service
