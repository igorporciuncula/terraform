#Shell que faz a chamada da instalacao do Ansible (Fedora, CentOS, Rhel)

#!/bin/bash
echo "Update packages..."
sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum update -y
echo "Setup Ansible..."
sudo yum install -y ansible --enablerepo=epel
sudo yum install -y golang git
exit 0


