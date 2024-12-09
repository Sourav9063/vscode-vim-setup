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
