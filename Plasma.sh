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

case "$2" in
  blue) AccentColor="61,174,233" ;;
  pink) AccentColor="233,58,154" ;;
esac

sudo apt install --no-install-recommends --no-install-suggests -y \
  breeze-gtk-theme \
  sddm-theme-breeze \
  papirus-icon-theme \
  bibata-cursor-theme

# Global Theme
plasma-apply-lookandfeel --apply "$LookAndFeel"

# Colors
kwriteconfig6 --file kdeglobals --group General --key AccentColor "$AccentColor"
# plasma-apply-colorscheme "$ColorScheme"

# Plasma Style
# plasma-apply-desktoptheme "$DesktopTheme"

# Icons
kwriteconfig6 --file kdeglobals --group Icons --key Theme Papirus-"$1"
wget -qO- https://git.io/papirus-folders-install | sh
papirus-folders --color "$2"

# Cursors
plasma-apply-cursortheme "$CursorTheme"

# Splash Screen
kwriteconfig6 --file ksplashrc --group KSplash --key Theme None
