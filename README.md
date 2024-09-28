# Arch-Hyprland
Dotfiles and Documentation for Arch Linux with Hyprland

## Programs

| <!-- -->            | <!-- -->                                |
|---------------------|-----------------------------------------|
| Distro              | [EndeavourOS](https://endeavouros.com/) |
| Window Manager      | [Hyprland](https://hyprland.org/)       |
| Terminal            | Kitty                                   |
| Shell               | ZSH                                     |
| File Manager        | Nemo & ranger                           |
| Launcher            | wofi                                    |
| Notification Daemon | swaync                                  |
| Info Bar            | waybar                                  |
| Lockscreen          | hyprlock                                |
| Logout              | wlogout                                 |
| System Info         | btop & fastfetch                        |
| Document Viewer     | zathura                                 |
| Theme               | Catppuccin                              |

### Battery

[poweralertd](https://aur.archlinux.org/packages/poweralertd) for notifications 

### Systemd

edit /etc/systemd/[logind.conf](https://www.freedesktop.org/software/systemd/man/latest/logind.conf.html)

```conf
HandlePowerKey=ignore
HandleLidSwitch=suspend
```
