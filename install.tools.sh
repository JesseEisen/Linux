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

# - **update**
sudo apt update
wait


# - **Samba**
function_message_title '- **Samba**'
sudo apt-get install -y samba
wait


# - **Filezilla**
function_message_title '- **Filezilla**'
sudo apt-get install -y filezilla filezilla-common
wait


# - **Mysql-Workbench**
function_message_title '- **Mysql-Workbench**'
sudo apt-get install -y mysql-workbench
wait