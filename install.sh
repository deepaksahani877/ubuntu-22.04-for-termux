#!/bin/bash

set -e
FOLDER="andronix-fs"
BIND_FOLDER="andronix-binds"
OS_ARCHIVE="andronix_os.tar.xz"
PROC_DIR="$FOLDER/proc"
FAKETHINGS_DIR="$PROC_DIR/fakethings"

echo -e "\e[32m\e[1mInstalling Ubuntu XFCE Modded OS...\e[0m"

# Install dependencies
pkg install wget curl pv proot tar pulseaudio dos2unix -y

#request storage permission
termux-setup-storage

# Create folders
mkdir -p "$FOLDER" "$BIND_FOLDER" "$FOLDER/home/root"

# Extract downloaded archive
echo -e "\e[32m\e[1mExtracting $OS_ARCHIVE...\e[0m"
pv -s 726328124 "$OS_ARCHIVE" | proot --link2symlink tar --preserve-permissions -Jxf - -C "$FOLDER"

echo -e "\e[32m\e[1mExtraction complete!\e[0m"

# Create fake /proc files if they do not exist
mkdir -p "$FAKETHINGS_DIR"
for f in stat vmstat version; do
    if [ ! -f "$FAKETHINGS_DIR/$f" ]; then
        echo "" > "$FAKETHINGS_DIR/$f"
    fi
done

# Generate start script
cat > start-andronix.sh <<'EOF'
#!/bin/bash
cd $(dirname "$0")
pulseaudio -k >>/dev/null 2>&1
pulseaudio --start >>/dev/null 2>&1
unset LD_PRELOAD
command="proot"
command+=" --link2symlink"
command+=" -0"
command+=" -r andronix-fs"
if [ -n "$(ls -A andronix-binds 2>/dev/null)" ]; then
    for f in andronix-binds/*; do
        . "$f"
    done
fi
command+=" -b /dev"
command+=" -b /proc"
command+=" -b /sdcard:/sdcard"
command+=" -b andronix-fs/root:/dev/shm"
command+=" -b andronix-fs/proc/fakethings/stat:/proc/stat"
command+=" -b andronix-fs/proc/fakethings/vmstat:/proc/vmstat"
command+=" -b andronix-fs/proc/fakethings/version:/proc/version"
command+=" -w /root"
command+=" /usr/bin/env -i"
command+=" HOME=/root"
command+=" PATH=/usr/local/sbin:/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin:/usr/games:/usr/local/games"
command+=" TERM=$TERM"
command+=" LANG=en_US.UTF-8"
command+=" LC_ALL=C"
command+=" LANGUAGE=en_US"
command+=" /bin/bash --login"
com="$@"
if [ -z "$1" ]; then
    exec $command
else
    $command -c "$com"
fi
EOF

chmod +x start-andronix.sh
echo -e "\e[32m\e[1mInstallation successful! Start with ./start-andronix.sh\e[0m"
