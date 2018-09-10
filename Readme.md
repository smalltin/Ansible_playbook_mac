Ansible playbook pour Mac 
============================= 
Ces playbooks permettent l'installation 
de paquage via Homebrew et Homebrew 
Cask
## Prérequis OSX machine cible
Sur la machine cible: Créer une 
session deployer. Activer l’option 
ssh dans Menu Pomme -> Préférences 
systèmes -> Partage et cocher 
l’option session à distance. Regarder 
dans Pomme -> Préférences systèmes -> 
Réseau et trouver l'adresse ip.
## Sur la machine source
Lancer dans un terminal, se placer 
dans le répertoire ansible et lancer 
les lignes de commandes suivantes: 
chmod +x script_user.sh 
./script_user.sh Le mot de passe sudo 
est celui de la session deployer.
## Sur la machine cible
Quand l'exécution du script est 
terminé, se connecter sur le nouvel 
utilisateur et lancer dans le 
terminal la ligne suivante: 
/usr/bin/ruby -e "$(curl -fsSL 
https://raw.githubusercontent.com/Homebrew/install/master/install)" 
Ceci va installer homebrew et 
afficher un pop-up qui vous proposera 
d'installer command line tool. 
Accepter en cliquant sur installer et 
accepter conditions d'utilisation.
## Sur la machine source
Une fois homebrew et command line 
tool installés, lancer les commandes 
suivantes: chmod +x 
install_software.sh 
./install_software.sh Attention car 
le mot de passe demandé est celui du 
nouvel utilisateur créé précédemment!
Quand l'exécution du script est terminé la machine est prête à l'usage.
