echo "Setting up Ruby..."
rbenv init

echo "Installing latest Ruby version..."
rbenv install $(rbenv install -l | grep -v - | tail -1)

echo "Installing Bundler for Ruby gem management..."
sudo gem install bundler
