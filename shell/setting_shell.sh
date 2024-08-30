#!/bin/bash

### zshのインストール
# https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH
sudo apt install zsh

### starshipの設定
# https://starship.rs/ja-JP/guide/
curl -sS https://starship.rs/install.sh | sh
echo "$(starship init zsh)" >> ~/.zshrc

### zsh-autosuggestionsの設定
# https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
echo 'HISTFILE=~/.zsh_history' >> ~/.zshrc
echo 'HISTSIZE=1000' >> ~/.zshrc
echo 'SAVEHIST=1000' >> ~/.zshrc
echo 'setopt HIST_IGNORE_DUPS' >> ~/.zshrc
echo 'setopt SHARE_HISTORY' >> ~/.zshrc
echo 'setopt INC_APPEND_HISTORY' >> ~/.zshrc
