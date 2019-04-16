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

# Install auth-api
function install_auth_api()
{
	showStep "Installing auth-api"
    cd ~
    cd blockchain_ecosystem/HyperlegerFabricPrivateNetwork/src/
	npm install
    showStep "${GREEN}Installation auth-api complete"
}

# Install hypernodejs_api
function install_hypernodejs_api()
{
	showStep "Installing hypernodejs_api"
    cd ~
    cd blockchain_ecosystem/hypernodejs-api/
	npm install
    showStep "${GREEN}Installation hypernodejs_api complete"
}

# Install mail_api
function install_mail_api()
{
	showStep "Installing mail_api"
    cd ~
    cd blockchain_ecosystem/mail-api/
	npm install
    showStep "${GREEN}Installation mail_api complete"
}

# Install hypernodejs_app
function install_hypernodejs_app()
{
	showStep "Installing hypernodejs_app"
    cd ~
    cd blockchain_ecosystem/hypernodejs-app/
	npm install
    showStep "${GREEN}Installation hypernodejs_app complete"
}

#run
showStep "${YELLOW} Setup to start"
install_auth_api
install_hypernodejs_api
install_mail_api
install_hypernodejs_app
showStep "${GREEN} Setup to Finish"