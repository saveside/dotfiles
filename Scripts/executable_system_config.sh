#!/bin/bash
# Sway script
cat <<EOF >/usr/local/bin/sw
#!/usr/bin/env bash
export SDL_VIDEODRIVER=wayland
export QT_QPA_PLATFORM=wayland
export _JAVA_AWT_WM_NONREPARENTING=1
export XDG_CURRENT_DESKTOP=sway
export XDG_SESSION_DESKTOP=sway
exec sway --unsupported-gpu "\$@"
EOF

# Make it executable
chmod +x /usr/local/bin/sw

# Add wayland session to /usr/share/wayland-sessions/sw.desktop
cat <<EOF >/usr/share/wayland-sessions/sw.desktop
[Desktop Entry]
Name=sw
Comment=Sway with Environment Variables for Wayland
Exec=/usr/local/bin/sw
Type=Application
EOF
