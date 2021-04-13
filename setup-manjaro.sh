#Atualiazação de sistema e instalação de apps
sudo pacman -Syyuu --noconfirm

sudo pacman -S yay base-devel --noconfirm

yay -S tilix ttf-jetbrains-mono visual-studio-code-bin github-cli tmux insomnia zsh git anki ulauncher beekeeper-studio-appimage brave inkscape gimp discord vlc vim bat exa neovim percol bashtop --noconfirm
                                 
#Configurando vim com o tema x

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp $HOME/dotfiles/files/vimrc $HOME/.vimrc

#Configurando o git e o Github CLI

cp $HOME/dotfiles/files/gitconfig $HOME/.gitconfig

ssh-keygen -t rsa -b 4096 -C "neto.daniribeiro@gmail.com"

eval "$(ssh-agent -s)"

ssh-add ~/.ssh/id_rsa

gh config set git_protocol ssh

#Configurando o tmux e aplicando o tema dracula

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

cp $HOME/dotfiles/files/tmux.conf $HOME/.tmux.conf

# Configurando o alacrittry terminal

cp $HOME/dotfiles/files/alacrittry $HOME/.config/alacritty/alacritty.yml

# Configuração do neovim
cp -r $HOME/dotfiles/files/neovim $HOME/.config/nvim

#Configurando o zsh com Oh my zshell e o tema spaceship

git clone https://github.com/defauth98/dotfiles.git dotfiles

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"

ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

cp $HOME/dotfiles/files/zshrc $HOME/.zshrc
