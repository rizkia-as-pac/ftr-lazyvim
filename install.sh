sudo pacman -S --needed --noconfirm - <./arch-official-packages.txt

mv ./exclude-config.sh ./config.sh

sudo mkdir -p $HOME/.config/nvim
sudo cp -r ./lua $HOME/.config/nvim/
sudo cp -r ./.neoconf.json $HOME/.config/nvim/
sudo cp -r ./init.lua $HOME/.config/nvim/
sudo cp -r ./stylua.toml $HOME/.config/nvim/
