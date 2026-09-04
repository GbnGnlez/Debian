#!/bin/bash
wget -O Spotify.deb "https://repository.spotify.com/pool/non-free/s/spotify-client/spotify-client_1.2.96.518.g366879e1_amd64.deb"
sudo apt install --no-install-recommends --no-install-suggests ./Spotify.deb -y
rm Spotify.deb
