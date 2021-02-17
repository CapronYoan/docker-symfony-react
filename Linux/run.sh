!/bin/bash

cd $APP
symfony server:start --daemon
yarn encore dev --watch


