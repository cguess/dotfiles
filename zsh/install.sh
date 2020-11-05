echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Setting proper permissions for oh-my-zsh"
chmod 755 /usr/local/share/zsh
chmod 755 /usr/local/share/zsh/site-functions

echo "Installing powerline fonts..."
git clone https://github.com/powerline/fonts.git --depth=1
cd powerlinefonts
./install.sh
cd ..
rm -rf powerlinefonts

echo "Turning on zsh as default shell..."
chsh -s /bin/zsh
