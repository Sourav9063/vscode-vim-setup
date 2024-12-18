# back up

```bash
dpkg --get-selections | grep -v deinstall > ubuntu-files
```

# restore

```bash
sudo dpkg --set-selections <./ubuntu-files

apt-get -y update
apt-get dselect-upgrade
```

# switch apps in every window

```bash
gsettings set org.gnome.shell.window-switcher current-workspace-only false
```

# increase swap size

```bash
sudo swapon --show
```

```bash
sudo swapoff /swapfile
```

```bash
sudo fallocate -l 32G /swapfile
```

```bash
ls -lh /swapfile
```

```bash
sudo mkswap /swapfile
```

```bash
sudo swapon /swapfile
```

```bash
sudo swapon --show
```

# install clipboard to sync neovim

```bash
sudo apt install wl-clipboard
```

# No c compiler

```bash
sudo apt-get install build-essential
```
