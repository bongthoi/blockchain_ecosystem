#!/bin/bash
 
 YELLOW='\033[1;33m'
 RED='\033[1;31m'
 GREEN='\033[1;32m'
 RESET='\033[0m'

# displays where we are, uses the indent function (above) to indent each line
function showStep ()
    {
        echo -e "${YELLOW}=====================================================" 
        echo -e "${RESET}-----> $*"
        echo -e "${YELLOW}=====================================================${RESET}"
    }


# Install ether-ropsten-api
function install_ether_ropsten_api()
{
	showStep "Installing ether-ropsten-api"
    cd ~
    cd blockchain_ecosystem/ether-ropsten-api/
	npm install
    showStep "${GREEN}Installation ether-ropsten-api complete"
}

# Install etherGateway-api
function install_etherGateway_api()
{
	showStep "Installing etherGateway-api"
    cd ~
    cd blockchain_ecosystem/etherGateway-api/
	npm install
    showStep "${GREEN}Installation etherGateway-api complete"
}

# Install etherRopsten-app
function install_etherRopsten_app()
{
	showStep "Installing etherRopsten-app"
    cd ~
    cd blockchain_ecosystem/etherRopsten-app/
	npm install
    showStep "${GREEN}Installation etherRopsten-app complete"
}

#run
showStep "${YELLOW} Setup Ethereum wallet to start"
install_ether_ropsten_api
install_etherGateway_api
install_etherRopsten_app
showStep "${GREEN} Setup to Finish"