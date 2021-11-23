
export jenkins_dir="/home/borys/jenkins"
sudo apt install docker.io -y
sudo docker pull jenkins/jenkins
mkdir $jenkins_dir
chmod 777 $jenkins_dir
sudo ufw allow 8282
sudo docker run --rm --name jenkins -d -p 8282:8080 -v $jenkins_dir:/var/jenkins_home/ b7dce66a5c31
sleep 10
cat $jenkins_dir/secrets/initialAdminPassword

