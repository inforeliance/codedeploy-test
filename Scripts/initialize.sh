sudo yum update -y
sudo yum install -y ruby
sudo yum install -y aws-cli
cd /home/ec2-user
aws s3 cp s3://aws-codedeploy-us-west-2/latest/install . --region us-west-2
chmod +x ./install
sudo ./install auto

sudo su
curl --silent --location https://rpm.nodesource.com/setup | bash -

yum -y install nodejs 

chmod 777 /root