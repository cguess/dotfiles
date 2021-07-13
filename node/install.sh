if test $(command -v n)
then
  echo "Setting up Node via N..."
  sudo n lts
fi

if test $(which yarn)
then
  echo "Setting up global Node packages via Yarn..."
  yarn global add eslint
  yarn global add sequelize-cli
fi
