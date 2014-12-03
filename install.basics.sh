#!/bin/bash

# Reset color
RS="\e[0m"
# Basic Colors
BLACK="\e[0;30m"
RED="\e[0;31m"
GREEN="\e[0;32m"
YELLOW="\e[0;33m"
BLUE="\e[0;34m"
PURPLE="\e[0;35m"
CYAN="\e[0;36m"
WHITE="\e[0;37m"

function_message_title () {
  echo -e "${CYAN}"
  echo -e "# | ::::::::::::::::::::::::::::::::::::::::::::: | #"
  echo -e "# |      ${RS} $1 ${CYAN}"
  echo -e "# | ::::::::::::::::::::::::::::::::::::::::::::: | #"
  echo -e "${RS}"
}

SCRIPT_PATH=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# - **update**
sudo apt update


# - **Progress bar**
function_message_title '- **Progress bar**'
echo 'Dpkg::Progress-Fancy "1";' | sudo tee /etc/apt/apt.conf.d/99progressbar


# - **Git**
function_message_title '- **Git**'
sudo add-apt-repository -y ppa:git-core/ppa
sudo apt update
sudo apt-get install -y git
wait


# - **Curl**
function_message_title '- **Curl**'
sudo apt-get install -y curl
wait


# - **Vim**
function_message_title '- **Vim**'
sudo apt-get install -y vim
wait


# - **Htop**
function_message_title '- **Htop**'
sudo apt-get install -y htop
wait
