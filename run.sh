mv output.log output.log.bak

ssh-keygen -R 192.168.20.114
dgc v c dev
sleep 4
ansible-playbook -i 192.168.20.114, playbook.yml

dgc v c apps
sleep 4
ansible-playbook -i 10.0.20.114, playbook.yml

dgc v c prod
sleep 4
ansible-playbook -i 10.0.20.114, playbook.yml

dgc v c prodeu
sleep 4
ansible-playbook -i 10.0.20.114, playbook.yml

dgc v c appseu
sleep 4
ansible-playbook -i 10.0.20.114, playbook.yml

dgc v c testing
sleep 4
ansible-playbook -i 10.0.20.114, playbook.yml

ssh-keygen -R 192.168.20.114
dgc v c staging
sleep 4
ansible-playbook -i 192.168.20.114, playbook.yml

dgc v c sandbox
sleep 4
ansible-playbook -i 10.0.20.114, playbook.yml