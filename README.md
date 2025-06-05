# Arch-Hyprland

## Catppuccin Branch

### Installation

Essentials
```
yay -S hyprland kitty rofi swaync waybar wlogout hyprlock hyprshot waypaper swww poweralertd hyprpolkitagent nwg-look brightnessctl power-profiles-daemon zsh ttf-font-awesome nerd-fonts
```

System
```
yay -S btop fastfetch gnome-disk-utility 
```

Optional
```
yay -S ripperx gimp dbeaver libreoffice-still typst
```

## GTK

[Catppuccin GTK Theme](https://github.com/Fausto-Korpsvart/Catppuccin-GTK-Theme)

```bash
sudo pacman -S gnome-shell
```

```bash
git clone https://github.com/Fausto-Korpsvart/Catppuccin-GTK-Theme
```

```bash
cd Catppuccin-GTK-Theme/themes
```

```bash
./install.sh
```

## File Managers

```bash
sudo pacman -S nemo thunar pcmanfm-gtk3 nautilus ranger yazi
```

### For Nautilus

Disable Recent
```bash
gsettings set org.gnome.desktop.privacy remember-recent-files false
```

In `hyprland.conf`
```conf
nautilus --new-window
```


## Systemd

[logind.conf](https://www.freedesktop.org/software/systemd/man/latest/logind.conf.html)

```bash
sudo nano /etc/systemd/logind.conf
```

```conf
HandlePowerKey=ignore
HandleLidSwitch=suspend
```

## Battery

[UPower](https://upower.freedesktop.org/) for Battery Information

[poweralertd](https://aur.archlinux.org/packages/poweralertd) for notifications 


## Network

[nm-applet](https://archlinux.org/packages/extra/x86_64/network-manager-applet/) to control Network settings (wifi, vpn, ...)

### Wireguard VPN

Install Wireguard

```bash
sudo pacman -S wireguard-tools
```

Import a wireguard conf via `nmcli`

```bash
nmcli connection import type wireguard file Home.conf
```

Disable autoconnect on startup

```bash
nmcli connection modify Home autoconnect no
```

Enable or disable the connection with

```bash
nmcli connection up Home
```

```bash
nmcli connection down Home
```

Maybe you encounter this error

> Failed to set DNS configuration: Could not activate remote peer 'org.freedesktop.resolve1': activation request failed: unknown unit

```bash
sudo systemctl enable --now systemd-resolved
```

## Display Manager

[ly](https://archlinux.org/packages/extra/x86_64/ly/)

```bash
sudo systemctl enable ly
```

```bash
sudo systemctl start ly
```

## Grub

[Themes](https://github.com/vinceliuice/grub2-themes)

Choose a [wallpaper](https://github.com/felixs274/Arch-Hyprland/tree/main/wallpaper) for the bootscreen and place it as `background.jpg` inside the repo.

```bash
sudo ./install.sh -t vimix -i white -s 4k
```



