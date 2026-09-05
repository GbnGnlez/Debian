# https://github.com/ONLYOFFICE/DesktopEditors/releases/

INSTALLED_VER=$(onlyoffice-desktopeditors --version 2>&1 | grep -oP '\d+\.\d+\.\d+')
LATEST_VER=$(curl -sI "https://github.com/ONLYOFFICE/DesktopEditors/releases/latest" | grep -oP '/v\K\d+\.\d+\.\d+')

if [ "$INSTALLED_VER" != "$LATEST_VER" ]; then
    wget -qO OnlyOffice.deb "https://github.com/ONLYOFFICE/DesktopEditors/releases/latest/download/onlyoffice-desktopeditors_amd64.deb"
    sudo apt install --no-install-recommends --no-install-suggests ./OnlyOffice.deb ttf-mscorefonts-installer -y
    rm OnlyOffice.deb
else
    echo "OnlyOffice is already the newest version ($INSTALLED_VER)."
fi
