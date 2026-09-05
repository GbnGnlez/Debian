# https://code.visualstudio.com/Download/

#wget -O VSCode.deb "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
sudo apt install --no-install-recommends --no-install-suggests ./VSCode.deb shfmt -y
rm VSCode.deb

git config --global user.name "GbnGnlez"
git config --global user.email "GbnGnlez@outlook.com"

mkdir -p ~/.config/Code/User
cat >~/.config/Code/User/settings.json <<'EOF'
{
            "editor.formatOnSave": true,
            "git.enableSmartCommit": true
}
EOF
