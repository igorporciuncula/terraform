# Ansible

- Use the bastion host to install ansible and git commands to run deploy of jenkins master or jenkins slave.
- Obtain name or IP Address of the machines and insert in the hosts file. Ex: 

  [epamlbs]
  
  172.16.21.80
  172.16.21.82


  Instructions:
  - git clone code repository 
  - Run the command:
  Shell># ansible-playbook -i hosts main.yml  -e ansible_ssh_user=ec2-user --private-key=/home/ec2-user/epam.pem

