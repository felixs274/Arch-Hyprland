# Arch-Hyprland
Dotfiles and Documentation for Arch Linux with Hyprland

| <!-- -->            | <!-- -->                                |
|---------------------|-----------------------------------------|
| Distro              | [EndeavourOS](https://endeavouros.com/) |
| Window Manager      | [Hyprland](https://hyprland.org/)       |
| Terminal            | Kitty                                   |
| Shell               | ZSH                                     |
| File Manager        | Nemo & ranger                           |
| Launcher            | rofi                                    |
| Notification Daemon | swaync                                  |
| Info Bar            | waybar                                  |
| Lockscreen          | hyprlock                                |
| Logout              | wlogout                                 |
| Screenshot Utility  | hyprshot                                |
| System Info         | btop & fastfetch                        |
| Document Viewer     | zathura                                 |
| Theme               | Catppuccin                              |

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

edit `/etc/systemd/[logind.conf](https://www.freedesktop.org/software/systemd/man/latest/logind.conf.html)`

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
