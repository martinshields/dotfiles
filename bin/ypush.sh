#!/bin/bash
cp ~/.oh-my-zsh/custom/functions.zsh ~/functions.zsh
cp ~/.oh-my-zsh/custom/aliasmartin.zsh ~/aliasmartin.zsh
sleep 3
yadm status
yadm commit -a
yadm push
