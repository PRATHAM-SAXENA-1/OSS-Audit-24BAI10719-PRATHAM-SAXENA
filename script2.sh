#!/bin/bash
# Script 2: FOSS Package Inspector
PACKAGE="python3"

# Check if package is installed
if dpkg -l $PACKAGE &>/dev/null; then
  echo "$PACKAGE is installed."
  dpkg -s $PACKAGE | grep -E 'Version|Status'
  apt-cache show $PACKAGE | grep -E 'License|Description'
else
  echo "$PACKAGE is NOT installed."
fi

# Philosophy note based on package name
case $PACKAGE in
  httpd)   echo "Apache: the web server that built the open internet" ;;
  mysql)   echo "MySQL: open source at the heart of millions of apps" ;;
  python3) echo "Python: the language that made coding human-readable" ;;
  nginx)   echo "Nginx: lightweight, fast, and powering half the web" ;;
  git)     echo "Git: because losing your work once is enough" ;;
  firefox) echo "Firefox: the browser that chose people over profit" ;;
esac
