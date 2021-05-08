echo -n "Enter package name: "
read package_name

echo '[1] Clonning repository ...'

git clone https://aur.archlinux.org/$package_name.git

cd ./$package_name

echo '[2] Making package ...'
makepkg -si

echo '[3] Installing the package ...'
for pkg in *.pkg.tar.zst; do sudo pacman -U $pkg; done;

