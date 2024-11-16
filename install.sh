sudo pacman -S --needed --noconfirm - <./arch-official-packages.txt

sudo mkdir -p $HOME/shell_config_features/ftr-lazyvim
sudo cp -r ./config.sh $HOME/shell_config_features/ftr-lazyvim/config.sh

sudo mkdir -p $HOME/.config/nvim
sudo cp -r ./lua $HOME/.config/nvim/
sudo cp -r ./.neoconf.json $HOME/.config/nvim/
sudo cp -r ./init.lua $HOME/.config/nvim/
sudo cp -r ./stylua.toml $HOME/.config/nvim/
