#!/bin/bash

# Organizer App Desktop Shortcut Installer
APP_NAME="Organizer"
EXEC_PATH="$(pwd)/OrganizerAPP"
WORKING_DIR="$(pwd)"
DESKTOP_FILE="$HOME/.local/share/applications/$APP_NAME.desktop"

chmod +x OrganizerAPP
chmod +x searchEngine organizer findTool/find_tool

echo "Creating desktop shortcut for $APP_NAME..."

# Create .desktop file
cat > "$DESKTOP_FILE" <<EOL
[Desktop Entry]
Name=$APP_NAME
Comment=File Organizer with Search Engine
Exec=$EXEC_PATH
Path=$WORKING_DIR
Icon=$ICON_PATH
Terminal=false
Type=Application
Categories=Utility;
EOL

# Make it executable
chmod +x "$DESKTOP_FILE"

# Refresh desktop database
update-desktop-database "$HOME/.local/share/applications"

echo "Shortcut created at $DESKTOP_FILE"
echo "You can now find '$APP_NAME' in your app menu."

