# Installation Projet Docker pour Linux MacOSX et Windows

## lien vers la documentation de Docker: https://docs.docker.com/

## ## Linux install ##

### Installation Docker
sudo apt-get update && sudo apt-get install docker.io docker-compose

### Ajouter cet utilisateur dans le groupe Docker
sudo usermod -aG docker {nom d'utilisateur}

### Test que tout fonctionne
docker run hello-world

### Cloner le répertoire
git clone https://github.com/CapronYoan/docker-symfony-react.git

### Se placer à la racine du répertoire
cd docker-projet/Linux

### Build le docfile
docker build .

### Composer le docker
docker-compose up -d

### Afficher les containers en cour
docker ps

### Executer un shell du container
docker exec -ti {id du container à executer(dans docker ps)} sh

### Executer le script d'installation à l'intérieur du container 
./installProject.sh

### Démarrer l'environement à l'intérieur du container
./run.sh

### Url du projet dans votre navigateur sur votre machine locale
http://localhost:5000


###  ## OPTIONEL: PARAMETRES DE SECURITE ##

### Créer un utilisateur spécifique pour docker 
### (indiquer uniquement un mot de passe et le retenir, pour le reste pressez la touche entrer)
sudo adduser --uid 100000 {nom d'utilisateur}

### Ajouter cet utilisateur dans le groupe Docker
sudo usermod -aG docker {nom d'utilisateur}

### Changer d'utilisateur
su {nom d'utilisateur}

### Ouvrir ce fichier
sudo nano /etc/subuid
#### si votre utilisateur apparait, modifier la ligne où il apparait. Si il n'appparait pas, il faut simplement la créer:
{nom d'utilisateur}:100000:100000

### Même chose pour ce fichier
sudo nano /etc/subgid
#### si votre utilisateur apparait, modifier la ligne où il apparait. Si il n'appparait pas, il faut simplement la créer:
{nom d'utilisateur}:100000:100000

### Puis modifier le nom du namespace du docker daemon 
sudo nano /etc/docker/daemon.json

###

{
  "userns-remap": {nom d'utilisateur !!entre guillemets ex:"user1"}
}

### Enfin redémarer docker ou redémarrer complétement la machine
service docker restart 

### ##############

### !!! Si vous venez de redémmarer, se replacer avec l'utilisateur créé si besoin avec la commande: su {nom d'utilisateur}


## ### MacOSX install ###

### S'assurer d'être sur un compte administrateur(droits root)

### Téléchargez Docker ici
https://hub.docker.com/editions/community/docker-ce-desktop-mac/

### Installation et intégration
Double-cliquez sur Docker.dmg puis glissez déposez docker dans l'icone Applications

### Lancer Docker
Double-cliquez sur Docker.app pour lancer Docker

### tester Docker
Ouvrez une console puis tapez: docker run hello-world 
si la commande s'execute, on est ok.

### Cloner le répertoire
git clone https://github.com/CapronYoan/docker-symfony-react.git

### Se placer à la racine du répertoire
cd docker-projet/MacOSX

### Build le docfile
docker build .

### Composer le docker
docker-compose up -d

### Afficher les containers en cour
docker ps

### Executer un shell du container
docker exec -ti {id du container à executer(dans docker ps)} sh

### Executer le script d'installation à l'intérieur du container 
./installProject.sh

### Démarrer l'environement
./run.sh

### Url du projet dans votre navigateur votre machine locale
http://localhost:5000


## ### Windows 10 install ###

### S'assurer d'être sur un compte administrateur

### S'assurer d'avoir installé git et gitbash
https://github.com/git-for-windows/git/releases/download/v2.30.1.windows.1/Git-2.30.1-64-bit.exe

### Téléchargez Docker ici
https://hub.docker.com/editions/community/docker-ce-desktop-windows/

### Installation de Docker
Double-cliquez sur Docker Desktop Installer.exe

### Pour Windows 10 Pro, Entreprise et Education
Lorsque que ce sera indiqué, assurez-vous d'avoir validé: Enable Hyper-V Windows Features
puis suivez les intructions

### Pour Windows 10 Home  
Lorsque que ce sera indiqué, assurez-vous d'avoir validé: Enable WSL 2 Features
puis suivez les intructions

### Ouvrir gitbash dans le bon dossier
Placez vous au niveau du dossier où vous souhaitez installer le projet,
cliquez droit sur votre souris puis ouvrir gitbash ici

### Cloner le répertoire
git clone https://github.com/CapronYoan/docker-symfony-react.git

### Se placer à la racine du répertoire
cd docker-projet/Windows

### Build le docfile
docker build .

### Composer le docker
docker-compose up -d

### Afficher les containers en cour
docker ps

### Executer un shell du container
docker exec -ti {id du container à executer(dans docker ps)} sh

### Installer Python dans le containeur
apk add python3

### Executer le script d'installation à l'intérieur du container 
python3 installProject.py

### Démarrer l'environement
python3 run.py

### Url du projet dans votre navigateur votre machine locale
http://localhost:5000

