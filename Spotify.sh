# https://repository.spotify.com/dists/stable/non-free/binary-amd64/Packages
# https://repository.spotify.com/pool/non-free/s/spotify-client/

URL="https://repository.spotify.com/"
Pkgs="dists/stable/non-free/binary-amd64/Packages"
Repo="pool/non-free/s/spotify-client/spotify-client"
Version=$(wget -O- "${URL}${Pkgs}" | awk -F_ '/spotify-client_/ {print $2}')

INSTALLED_VER=$(spotify --version 2>&1 | grep -oP 'version \K[0-9.a-z]+')

if [ "$INSTALLED_VER" != "$Version" ]; then
    wget -O Spotify.deb "${URL}${Repo}_${Version}_amd64.deb"
    sudo apt install --no-install-recommends --no-install-suggests ./Spotify.deb -y
    rm Spotify.deb
fi
