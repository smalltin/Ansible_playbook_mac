#!/bin/bash

echo "******************************"
echo "Entrer une adresse IP"
read ADRESS_IP
echo $ADRESS_IP > hosts
echo "******************************"

echo "******************************"
echo "Entrer un nom d'utilisateur: "
read USERNAME
echo "******************************"

ansible-playbook -i hosts script.yml --extra-vars "hosts=$ADRESS_IP username=$USERNAME"  --ask-become
