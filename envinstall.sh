#!/bin/bash
RBENV_VER = 2.3.1
PYENV_VER = 3.5.2
PLENV_VER = 5.24.0
eval "$(pyenv init -)"
eval "$(plenv init -)"

rbenv install ${RBENV_VER}
pyenv install ${PYEMV_VER}
plenv install ${PLENV_VER} 
plenv install-cpanm

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)
export PATH="$HOME/.plenv/bin:$PATH"
eval "$(plenv init -)"

rbenv rehash
pyenv rehash
plenv rehash 

rbenv global ${RBENV_VER} 
pyenv global ${PYENV_VER}
plenv global ${PLENV_VER} 
