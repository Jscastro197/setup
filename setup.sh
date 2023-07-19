#!/bin/bash

#Setting Variables
file="$0"
startTime=$(date +"%T")
echo "Program Entered File: $file At Time $startTime"

# Function: insatllNpmModules
installNpmModules(){
 npm install -g npm
 cd "$(dirname "0")/ubitool-master"
 npm install
 echo "status - node modules installation in folder ubitolls-master - Successful"
 echo "ERRORLEVEL - $?"
}

createVirtualEnvironment(){
 cd "$(dirname "$0")"
 pip install virtualenv
 python3.7 -m venv venv
 . venv/bin/activate
 pip list
 echo "Printing out pip list to verify installation and activation of env"
 echo "ERRORLEVEL - "$?""
}

installPythonModules(){
 cd "$(dirname "$0")"
 python3 -m pip install --upgrade pip
 pip install -r requirements.txt
 echo "status - python package installation in virtual envirnment - Successful"
 echo "ERRORLEVEL - $?"
}


installPythonModules(){
 cd "$(dirname "$0")"
 python3 -m pip install --upgrade pip
 pip install -r requirements.txt
 echo "status - python package installation in virtual envirnment - Successful"
 echo "ERRORLEVEL - $?"
}

installNodeJS() {
  # Install nvm (Node Version Manager) if not already installed

  cd "$(dirname "$0")"
  sudo apt install nodejs
  sudo dpkg -i --force-overwrite /var/cache/apt/archives/nodejs_18.17.0-deb-1nodesource1_amd64.deb
  sudo apt -f install 
  sudo apt install npm
  #curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
  export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
  nvm install lts
  nvm use lts

  echo "status - Installation of Node.js 18.6.0 is - Successful"
  echo "ERRORLEVEL - $?"
} 


installPython(){
 sudo apt install software-properties-common -y
 sudo add-apt-repository ppa:deadsnakes/ppa -y
 sudo apt update
 sudo apt install python3.7
 sudo apt install python3-pip
 python3 --version 
 pip --version
 echo "status - Installation of Python3.7 and pip is - Successful"
 echo "ERRORLEVEL - $?"
}

# calling Functions
installNodeJS
#installPython


# Set end time
endTime=$(date +"%T")
echo "Program Exited Files: $file At Time $endTime"
echo "eof"

