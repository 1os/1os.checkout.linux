sudo snap remove 1os-checkout
snapcraft clean
snapcraft
sudo snap install --devmode --edge 1os-checkout_2023.05.19_amd64.snap

sudo snap connect 1os-checkout:io-ports-control :io-ports-control
sudo snap connect 1os-checkout:hardware-observe :hardware-observe
sudo snap connect 1os-checkout:raw-usb :raw-usb
sudo snap restart 1os-checkout
