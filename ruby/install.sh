echo "Setting up Ruby..."
rbenv init

echo "Installing latest Ruby version..."
rbenv install -l

echo "Installing Bundler for Ruby gem management..."
gem install bundler
