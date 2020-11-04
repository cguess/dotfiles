# The Brewfile handles Homebrew-based app and library installs, but there may
# still be updates and installables in the Mac App Store. There's a nifty
# command line interface to it that we can use to just install everything, so
# yeah, let's do that.

# Disabling this until I better understand all the options
# echo "Setting up macOS defaults..."
# sh -c "macos/set-defaults.sh"

echo "› sudo softwareupdate -i -a"
sudo softwareupdate -i -a

# To look up the install ID go to the store and "copy link"
# and pull it from the URL
echo "Installing Mac App Store apps..."
mas install 803453959 # Slack
mas install 1091189122 # Bear, text-editor
mas install 403388562 # Transmit, FTP
mas install 409183694 # Keynote
mas install 409201541 # Pages
mas install 409203825 # Numbers
mas install 926036361 # LastPass
mas install 499340368 # Coda
mas install 497799835 # XCode
mas install 1440147259 # Adguard for Safari
mas install 1481302432 # Instapaper
mas install 1147396723 # WhatsApp

# Manually copy from backup...
# Tweetbot 2
# Highland

# Manually install
# Adobe Creative Cloud

# echo "Starting macOS services..."
brew services start postgresql

# echo "Installing global Bundler..."
gem install bundler
