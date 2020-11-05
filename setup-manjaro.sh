# TODO
# Developer Tools 
# - Terminal
# - Zshell
# - Vim
# - VS code
# - GIT
# - Insominia
# - Beekeper studio
# - NVM
# - yarn 
# - Expo

# Atualizar o sistema
sudo pacman -Syyuu

# Instalar o YAY
sudo pacman -S yay 

# Install apps
yay -S tilix ttf-jetbrains-mono visual-studio-code-bin github-cli tmux insomnia zsh git anki ulauncher beekeeper-studio-appimage brave inkscape gimp discord vlc

# baixar meu repositório de arquivos de configuração
git clone https://github.com/defauth98/dotfiles.git dotfiles

# Ir para o repositório
cd dotfiles

# Instale o vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Copie os arquivos de configuração do vim
cp files/vimrc $HOME/.vimrc

# Copie o arquivo de configuração para a sua home
cp files/gitconfig $HOME/.gitconfig

# Copie os arquivos de configução
cp files/tmux.conf $HOME/.tmux.conf

# Copie os arquivos de configuração do Zshell
cp files/zshrc $HOME/.zshrc

# Instale o Oh My Zshell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Instale o tema spaceship
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"

# Crie um link simbólico para o tema
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Crie uma nova chave ssh
ssh-keygen -t rsa -b 4096 -C "neto.daniribeiro@gmail.com"

# Deixe rodando em background
eval "$(ssh-agent -s)"

#Adicione a sua lista de ssh keys
ssh-add ~/.ssh/id_rsa

# Mude o tipo de protocolo
gh config set git_protocol ssh

# Instale o tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
