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
