#!/bin/bash
brew install zsh
brew install git
brew install mercurial
brew install -f vim
brew install python
brew install wget
brew install tree
brew install pstree
brew install automake
brew install ack
brew install rlwrap
brew install --use-llvm gauche
brew install autojump
brew install phantomjs
brew install tig
brew install mongo
brew install mysql
brew install opencv
brew install the_silver_searcher
brew install bvi

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


#nodebrew
curl https://raw.github.com/hokaccha/nodebrew/master/nodebrew | perl - setup

#pythonbrew
curl -kL http://xrl.us/pythonbrewinstall | bash
pythonbrew venv init

#perlbrew
curl -kL http://xrl.us/perlbrewinstall | bash

brew install R

brew install gfortran
brew install gnuplot
brew install octave
