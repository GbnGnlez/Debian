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

sudo apt install --no-install-recommends --no-install-suggests bibata-cursor-theme -y

plasma-apply-lookandfeel --apply "$LookAndFeel"
plasma-apply-desktoptheme "$DesktopTheme"
plasma-apply-colorscheme "$ColorScheme"
plasma-apply-cursortheme "$CursorTheme"
