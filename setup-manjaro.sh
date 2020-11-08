echo "Atualizando o sistema"
sudo pacman -Syyuu

echo "Instalando o YAY!"
sudo pacman -S yay base-devel

echo "Install this apps -> tilix visual-studio-code-bin github-cli tmux insomnia zsh git anki ulauncher beekeeper-studio-appimage brave inkscape gimp discord vlc vim"
yay -S tilix ttf-jetbrains-mono visual-studio-code-bin github-cli tmux insomnia zsh git anki ulauncher beekeeper-studio-appimage brave inkscape gimp discord vlc vim

echo "Baixando meu repositório de arquivos de configuração"
git clone https://github.com/defauth98/dotfiles.git dotfiles

echo "Entrando o repositório de arquivos de configuração"
echo "Pasta atual:"
pwd

cd dotfiles
echo "Pasta do dotfiles"
pwd

echo "Instalando o Oh My Zshell"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
cp files/zshrc $HOME/.zshrc

echo "Instalando o Vundle e configurando o vim"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp files/vimrc $HOME/.vimrc

echo "Instalando o Github CLI"
cp files/gitconfig $HOME/.gitconfig
ssh-keygen -t rsa -b 4096 -C "neto.daniribeiro@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
gh config set git_protocol ssh

echo "Configurando o tmux"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp files/tmux.conf $HOME/.tmux.conf

echo "Done!"