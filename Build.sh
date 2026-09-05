./DesktopEnvironment.sh
./OnlyOffice.sh

case "$1" in
  ThinkPad)   ./Plasma.sh Dark blue; ./VSCode.sh; ./Spotify.sh ;;
  Pavilion)   ./Plasma.sh Light pink; ./Spotify.sh ;;
  IdeaPad)    ./Plasma.sh Dark green;;
  IdeaCentre) ./Plasma.sh Light black;;
esac
