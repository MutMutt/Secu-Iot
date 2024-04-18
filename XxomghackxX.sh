#!/bin/bash

# Installer les dépendances
sudo apt-get update
sudo apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y

# Cloner le référentiel xmrig
git clone https://github.com/xmrig/xmrig.git

# Créer un répertoire build et y accéder
mkdir xmrig/build && cd xmrig/build

# Configurer le processus de construction
cmake ..

# Construire le logiciel
make -j4

# Exécuter xmrig
./xmrig -o gulf.moneroocean.stream:10128 -u 469gA6GVNjqQPbu5afzHWCerrbDMnGRkvQwMRuxAt6x9WRP5wbLbf5JEp8RjA37ghPdBLX6Q2jJ1a7C3dMDEJxzwBY2qNi9 -p raspberry
