echo "-----------------------------------------------"
echo "This script will Install Jenkins and Java 1.8"
echo "-----------------------------------------------"
echo "sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key"
echo "===================================================================="

sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

echo "sudo yum upgrade"
echo "=================="
sudo yum upgrade

echo "sudo yum install jenkins java-1.8.0-openjdk-devel"
echo "================================================="

sudo yum install jenkins java-1.8.0-openjdk-devel -y

echo "sudo systemctl start jenkins"
echo "============================="
sudo systemctl start jenkins

echo "sudo systemctl status jenkins"
echo "============================="
sudo systemctl status jenkins
