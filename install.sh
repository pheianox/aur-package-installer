echo -n "Enter package name: "
read package_name

echo "[1] Clonning $package_name repository ..."

git clone https://aur.archlinux.org/$package_name.git

cd ./$package_name

echo "[2] Making $package_name ..."
makepkg -si

echo "[3] Installing $package_name ..."
for pkg in *.pkg.tar.zst; do sudo pacman -U $pkg; done;

