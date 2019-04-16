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

function pm2Install()
{

	# Install the latest version of npm
	showStep "Installing pm2"
	npm install -g pm2
    showStep "${GREEN}Installation pm2 complete"
}

#showStep "installing pm2"
pm2Install
