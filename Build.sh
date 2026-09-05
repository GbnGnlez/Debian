./DesktopEnvironment.sh
./OnlyOffice.sh

case $1 in
  ThinkPad)   ./Plasma.sh Dark; ./Spotify.sh ;;
  Pavilion)   ./Plasma.sh Light; ./Spotify.sh ;;
  IdeaPad)    ./Plasma.sh Dark ;;
  IdeaCentre) ./Plasma.sh Light ;;
esac
