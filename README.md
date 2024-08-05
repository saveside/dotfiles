![jomo_dotfiles](https://raw.githubusercontent.com/saveside/dotfiles/main/assets/dots.png)

This is my personal repo for my Arch linux configurations.

# Dependencies

| Type            | Package(s)                                           |
| --------------- | ---------------------------------------------------- |
| WM              | `swayfx`                                             |
| Bar             | `waybar`                                             |
| Launcher        | `rofi`                                               |
| Notifications   | `ags`                                                |
| Terminal        | `alacritty`                                          |
| GTK             | `Catppuccin Mocha`                                   |
| QT              | `Catppuccin Mocha`                                   |
| Icons           | `papirus-dark`                                       |
| Cursor          | `bibata`                                             |
| File manager    | `thunar`                                             |
| Screenshot tool | `flameshot`                                          |
| Polkit manager  | `lxsession`                                          |
| Fonts           | `ttf-iosevka-nerd ttf-jetbrains-mono monaspace Neon` |
| Editor          | `neovim`                                             |

You can also use `yay -S --needed - < pkgs` to install all dependencies.

# Installation

Incomplete but should get you most things.

```bash
chezmoi init https://github.com/saveside/dotfiles
chezmoi apply -v
# Optional if you want to get san francisco pro font
mkdir -p ~/.fonts
wget xeome.dev/sf-pro.zip && unzip sf-pro.zip -d ~/.fonts
wget https://github.com/githubnext/monaspace/releases/download/v1.000/monaspace-v1.000.zip && unzip monaspace-v1.000.zip -d ~/.fonts
fc-cache -frv
rm -rf "sf-pro.zip" "monaspace-v1.000.zip"
```

# Some shortcuts

| Shortcut               | Action                             |
| ---------------------- | ---------------------------------- |
| Super + Return (enter) | Launch terminal (`alacritty`)      |
| Super + W              | Launch file manager (`thunar`)     |
| Super + Q              | Launch web browser (`chromium`)    |
| Super + Shift + C      | Close focused application          |
| Super + Shift + R      | Restart window manager             |
| Super + Shift + Q      | Quit window manager                |
| Super + R              | Start program launcher (`rofi`)    |
| Super + 1-9            | Switch workspaces from 1 to 9      |

## Screenshots

![sway](https://raw.githubusercontent.com/saveside/dotfiles/main/assets/Setup.png)
