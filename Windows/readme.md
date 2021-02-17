###################################################################
#Description	:     	install Symfony/React env                                                                        
#Author       	:       Yoan Capron                                       
#Email       	:	yoan.capron21@gmail.com                                        
###################################################################

### docker installation
sudo apt-get update && sudo apt-get install docker.io docker-compose

### créer un utilisateur spécifique pour docker (indiquer uniquement un mot de passe et le retenir, pour le reste pressez le touche enter)
sudo adduser --uid 100000 {nom d'utilisateur}

### ajouter cet utilisateur dans le groupe Docker
sudo usermod -aG docker {nom d'utilisateur}

### changer d'utilisateur
su {nom d'utilisateur}


####### PARAMETRES DU NAMESPACE #######

### ouvrir ce fichier
sudo nano /etc/subuid
#### si votre utilisateur apparait, modifier la ligne où il apparait. Si il n'appparait pas, il faut simplement la créer:
{nom d'utilisateur}:100000:100000

### même chose pour ce fichier
sudo nano /etc/subgid
#### si votre utilisateur apparait, modifier la ligne où il apparait. Si il n'appparait pas, il faut simplement la créer:
{nom d'utilisateur}:100000:100000

### puis modifier le nom du namespace du docker daemon 
sudo nano /etc/docker/daemon.json

###

{
  "userns-remap": {nom d'utilisateur !!entre guillemets ex:"user1"}
}

### enfin redémarer docker ou redémarrer complétement la machine
service docker restart 

##############

### !!! si vous venez de redémmarer, se replacer avec l'utilisateur créé si besoin avec la commande: su {nom d'utilisateur}

### test que tout fonctionne
docker run hello-world

### cloner le répertoire
git clone https://github.com/CapronYoan/docker-symfony-react.git

### se placer à la racine du répertoire
cd docker-symfony-react

### build le docfile
docker build .

### composer le docker
docker-compose up -d

### montrer les containers en cour
docker ps

### executer un shell du container
docker exec -ti {id du container à executer(dans docker ps)} sh

### executer le script d'installation à l'intérieur du container 
./installProject.sh

### démarrer l'environement
./run.sh

### url du projet dans votre navigateur en dehors du container
http://0.0.0.0:5000

