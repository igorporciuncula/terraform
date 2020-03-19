#Shell que faz a chamada da instalacao do Ansible (Fedora, CentOS, Rhel)

#!/bin/bash
echo "Atualizando os pacotes..."
yum update -y
echo "Instalando Ansible..."
yum install ansible -y
exit 0


