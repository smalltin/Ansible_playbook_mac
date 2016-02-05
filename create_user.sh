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

echo "******************************"
echo "Entrer un mot de passe: "
read -s PASSWORD
echo "******************************"

ansible-playbook -i hosts create_user.yml --extra-vars "hosts=$ADRESS_IP username=$USERNAME password=$PASSWORD "  --ask-become
