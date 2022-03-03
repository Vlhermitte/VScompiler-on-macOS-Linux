#!/bin/bash

if [[ $OSTYPE == 'darwin'* ]];
then
  echo 'OSTYPE : macOS'

  if which 'wine' || wich 'wine64'; then
    echo 'Wine is already installed'
  else
    echo 'Wine is not installed you need to install it'

    if which 'brew'; then
      echo 'Homebrew is already install'
    else
      echo 'We need to install Homebrew'
      /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)";
    fi

    echo 'installing Wine'
    brew install --cask wine-stable;
  fi
    echo 'installing mingw-w64'
    brew install mingw-w64;

elif [[ $OSTYPE == 'linux-gnu' ]]; then
    echo 'OSTYPE : linux'

    echo 'installing mingw-w64'
    sudo apt install mingw-w64;

    if which 'wine' ; then
        echo 'Wine is already installed'
    else
      echo 'Wine is not installed you need to install it'

      sudo dpkg --add-architecture i386;
      sudo apt update;

      sudo apt install wine64 wine32;

      sudo apt install --install-recommends winehq-stable;
    fi
fi