#!/bin/bash

ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519 -N ""
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub

git config --global user.email dekunattou@gmail.com
