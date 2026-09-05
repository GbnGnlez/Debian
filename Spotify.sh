# https://repository.spotify.com/dists/stable/non-free/binary-amd64/Packages
# https://repository.spotify.com/pool/non-free/s/spotify-client/

INSTALLED_VER=$(spotify --version 2>&1 | grep -oP 'version \K[0-9.a-z]+')

URL="https://repository.spotify.com/"
Pkgs="dists/stable/non-free/binary-amd64/Packages"
Repo="pool/non-free/s/spotify-client/spotify-client"
Version=$(wget -O- "${URL}${Pkgs}" | awk -F_ '/spotify-client_/ {print $2}')


if [ "$INSTALLED_VER" != "$Version" ]; then
    wget -O Spotify.deb "${URL}${Repo}_${Version}_amd64.deb"
    sudo apt install --no-install-recommends --no-install-suggests ./Spotify.deb -y
    rm Spotify.deb
    else
    echo "Spotify is already the newest version ($INSTALLED_VER)."
fi
