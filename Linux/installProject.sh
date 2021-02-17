!/bin/bash

###################################################################
#Script Name	:     	installProject.sh                                                                                        
#Description	:     	install Symfony/React env                                                                        
#Args          :                                                                                           
#Author       	:                                                     
#Email       	:	capronyoan@gmail.com                                        
###################################################################

composer create-project symfony/website-skeleton $APP
cd $APP
composer require symfony/webpack-encore-bundle
npm install --global yarn
 yarn install
npm install react react-dom react-router-dom
npm install --save-dev @babel/preset-react
npm install node-sass
npm install  sass-loader
symfony console make:controller IndexController
cp ../IndexController.php src/Controller/IndexController.php
cp ../index.html.twig templates/index.html.twig
sed -i 's/\/\/.enableReactPreset()/.enableReactPreset()/' webpack.config.js
sed -i 's/\/\/.enableSassLoader()/.enableSassLoader()/' webpack.config.js
cp ../App.jsx assets/controllers/App.jsx
cp ../Home.jsx assets/controllers/Home.jsx
cp ../Lien.jsx assets/controllers/Lien.jsx
cp ../Text.jsx assets/controllers/Text.jsx
cp ../mysass.scss assets/styles/mysass.scss
sed -i "1 i\import './controllers/App';" assets/app.js
echo "Encore.enableSassLoader()" >> webpack.config.js

