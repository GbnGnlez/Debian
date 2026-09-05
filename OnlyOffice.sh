wget -O OnlyOffice.deb "https://github.com/ONLYOFFICE/DesktopEditors/releases/latest/download/onlyoffice-desktopeditors_amd64.deb"
sudo apt install --no-install-recommends --no-install-suggests ./OnlyOffice.deb -y
rm OnlyOffice.deb

sudo apt install --no-install-recommends --no-install-suggests ttf-mscorefonts-installer -y
