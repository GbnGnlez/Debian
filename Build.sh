./DesktopEnvironment.sh
./OnlyOffice.sh

case $1 in
  ThinkPad)   ./Plasma.sh Dark Blue; ./Spotify.sh ;;
  Pavilion)   ./Plasma.sh Light Pink; ./Spotify.sh ;;
  IdeaPad)    ./Plasma.sh Dark Pink ;;
  IdeaCentre) ./Plasma.sh Light Pink ;;
esac
