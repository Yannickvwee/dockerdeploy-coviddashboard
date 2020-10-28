#! /bin/bash
apt-get update -y
apt-add-repository --yes --update ppa:ansible/ansible 
apt-get -y install ansible

cat << EOF > /etc/ansible/hosts
node1
node2
node3
node4
node5
EOF
