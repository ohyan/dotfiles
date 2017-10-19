#!/bin/bash

# Install homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

brew install zsh
brew install git
brew install python3
brew install -f vim --with-lua --with-python3
brew install wget
brew install tree
brew install pstree
brew install automake
brew install rlwrap
brew install --use-llvm gauche
brew install autojump
brew install tig
brew install the_silver_searcher
brew install bvi
brew install tmux
brew install yajl
brew install gfortran
brew install gnuplot
brew install swig

# install to system python
pip install virtualenv
pip install sphinx
pip install nose
pip install numpy
pip install pygments
pip install ipython
pip install bpython
pip install pylint
pip install httpie
pip install requests
pip install percol

