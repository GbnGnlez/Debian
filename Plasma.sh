case "$1" in
  Light)
    LookAndFeel="org.kde.breeze.desktop"
    DesktopTheme="breeze-light"
    ColorScheme="BreezeLight"
    CursorTheme="Bibata-Modern-Classic"
    ;;

  Dark)
    LookAndFeel="org.kde.breezedark.desktop"
    DesktopTheme="breeze-dark"
    ColorScheme="BreezeDark"
    CursorTheme="Bibata-Modern-Ice"
    ;;
esac

sudo apt install --no-install-recommends --no-install-suggests -y \
  papirus-icon-theme \
  bibata-cursor-theme

plasma-apply-lookandfeel --apply "$LookAndFeel"
plasma-apply-desktoptheme "$DesktopTheme"
plasma-apply-colorscheme "$ColorScheme"
plasma-apply-cursortheme "$CursorTheme"

kwriteconfig6 --file kdeglobals --group Icons --key Theme Papirus-"$1"
wget -qO- https://git.io/papirus-folders-install | sh
papirus-folders --color "$2"

kwriteconfig6 --file ksplashrc --group KSplash --key Theme None
