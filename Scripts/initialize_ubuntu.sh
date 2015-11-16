sudo apt-get update 
sudo apt-get install -y ruby2.0
sudo apt-get install -y awscli
cd /home/ubuntu
aws s3 cp s3://aws-codedeploy-us-west-2/latest/install . --region us-west-2
chmod +x ./install
sudo ./install auto

sudo su
curl --silent --location https://rpm.nodesource.com/setup | bash -

yum -y install nodejs 

chmod 777 /root