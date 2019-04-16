# blockchain_ecosystem

## Features:
- [x] HyperledgerFabricPrivateNetwork.
- [x] auth-api.
- [x] hypernodejs-api.
- [x] mail-api.
- [x] hypernodejs-app.
- [x] pm2.

## Structure's Project:
```bash
.
|--HyperledgerFabricPrivateNetwork
|--auth-api
|--hypernodejs-api
|--mail-api
|--hypernodejs-app.
|--pm2.
```

## Clone Repo
1. Clone the Repo.

## Setup Enviroment for ubuntu
1. $cd ~/blockchain_ecosystem/pm2/scripts/
2. $chmod +x *.sh
3. $./prereqs-ubuntu.sh
4. $./prereqs-app.sh

## Setup Hyperleger Fabric Network
1. $cd ~/blockchain_ecosystem/HyperlegerFabricPrivateNetwork/
2. $chmod +x *.sh
3. $./setup_Ubuntu_Part_1.sh
4. $./setup_Ubuntu_Part_2.sh
5. $cd ~/blockchain_ecosystem/HyperlegerFabricPrivateNetwork/src/
6. $chmod +x *.sh

## Setup Hyperledger Fabric Webapps
1. $cd ~/blockchain_ecosystem/pm2/scripts/
2. $chmod +x setup_Hfabric_webapps.sh
4. $./setup_Hfabric_webapps.sh

## Setup Ether Webapps
1. $cd ~/blockchain_ecosystem/pm2/scripts/
2. $chmod +x setup_ether_webapps.sh
4. $./setup_ether_webapps.sh

## Run
1. $cd ~/blockchain_ecosystem/pm2/scripts/
3. $./setup_pm2.sh
1. $pm2 start web_apps.json

## Demo
2. Fabric Buyer Seller--> http://localhost:6001
2. Ether Wallet --> http://localhost:6002

## Run Daemon with pm2
1. $pm startup
2. $pm2 save

