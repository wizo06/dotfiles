# run all commands in ~
cd ~

# re-synch pkg manager
sudo apt update

# install core tools
sudo apt install curl git

# install tmux
sudo apt install tmux

# install tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# copy tmux config file
mkdir -p ~/.config/tmux
cp ~/dotfiles/.config/tmux/tmux.conf ~/.config/tmux

# install zsh
sudo apt install zsh

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
echo "source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc

# install catppuccin for zsh-syntax-highlighting
git clone https://github.com/catppuccin/zsh-syntax-highlighting.git ~/.catppuccin/zsh-syntax-highlighting
echo "source ~/.catppuccin/zsh-syntax-highlighting/themes/catppuccin_mocha-zsh-syntax-highlighting.zsh" >> ~/.zshrc
