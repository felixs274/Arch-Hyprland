# Arch-Hyprland

<img src="https://github.com/felixs274/Arch-Hyprland/blob/main/icon.png?raw=true" height="250" alt="Icon">

Dotfiles and Documentation for Arch Linux with Hyprland

| <!-- -->            | <!-- -->                                |
|---------------------|-----------------------------------------|
| Distro              | Arch                                    |
| Window Manager      | [Hyprland](https://hyprland.org/)       |
| Terminal            | Kitty                                   |
| Shell               | ZSH                                     |
| File Manager        | Nemo & ranger                           |
| Launcher            | rofi                                    |
| Notification Daemon | swaync                                  |
| Info Bar            | waybar                                  |
| Lockscreen          | hyprlock                                |
| Logout              | wlogout                                 |
| Display Manager     | ly                                      | 
| Screenshot Utility  | hyprshot                                |
| System Info         | btop & fastfetch                        |
| Document Viewer     | zathura                                 |
| Bootloader          | Grub                                    |
| Theme               | Catppuccin                              |
| Wallpaper           | waypaper & swww                         |

### Installation

Fonts
```bash
sudo pacman -S ttf-font-awesome nerd-fonts
```

Hyprland Stuff
```
yay -S hyprland rofi swaync waybar wlogout hyprshot waypaper swww
```

Others
```
yay -S ranger btop fastfetch
```

## GTK

[Catppuccin GTK Theme](https://www.gnome-look.org/p/1715554)

`~/.config/gtk-3.0/setting.ini` and `~/.config/gtk-4.0/setting.ini`

```conf
[Settings]
gtk-application-prefer-dark-theme = 1
gtk-theme-name=Catppuccin-Dark
gtk-icon-theme-name=kora
gtk-font-name=JetBrains Mono 11
```

## Battery

[UPower](https://upower.freedesktop.org/) for Battery Information

[poweralertd](https://aur.archlinux.org/packages/poweralertd) for notifications 

## Systemd

[logind.conf](https://www.freedesktop.org/software/systemd/man/latest/logind.conf.html)

edit `/etc/systemd/logind.conf`

```conf
HandlePowerKey=ignore
HandleLidSwitch=suspend
```

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

## Icons

Download the [Kora](https://github.com/bikass/kora) Icon Pack and place it in `~/.icons/`.

Rofi uses it!

