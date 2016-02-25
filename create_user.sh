#!/bin/bash

echo "****************************************"
echo "Entrer l'adresse IP de la machine cible"
read ADRESS_IP
echo $ADRESS_IP > hosts

echo "****************************************"
echo "Entrer un nom d'utilisateur: "
read USERNAME

echo "****************************************"
echo "Entrer un mot de passe: "
read -s PASSWORD

ansible-playbook -i hosts create_user.yml --extra-vars "hosts=$ADRESS_IP username=$USERNAME password=$PASSWORD "  --ask-become
