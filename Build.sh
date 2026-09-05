sudo cp ./sources.list /etc/apt/sources.list

./DesktopEnvironment.sh
./OnlyOffice.sh

case "$1" in
  ThinkPad)
    ./ThinkPad.sh
    ./Plasma.sh Dark blue
    ./VSCode.sh
    ./Spotify.sh
    ;;
  Pavilion)
    ./Plasma.sh Light pink
    ./Spotify.sh
    ;;
  IdeaPad)
    ./Plasma.sh Dark pink
    ;;
  IdeaCentre)
    ./Plasma.sh Light pink
    ;;
esac
