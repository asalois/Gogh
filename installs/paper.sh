#!/usr/bin/env bash

export PROFILE_NAME="Paper"

export COLOR_01="#000000"           # Black (Host)
export COLOR_02="#cc3e28"           # Red (Syntax string)
export COLOR_03="#216609"           # Green (Command)
export COLOR_04="#b58900"           # Yellow (Command second)
export COLOR_05="#1e6fcc"           # Blue (Path)
export COLOR_06="#5c21a5"           # Magenta (Syntax var)
export COLOR_07="#158c86"           # Cyan (Prompt)
export COLOR_08="#aaaaaa"           # White

export COLOR_09="#555555"           # Bright Black
export COLOR_10="#cc3e28"           # Bright Red (Command error)
export COLOR_11="#216609"           # Bright Green (Exec)
export COLOR_12="#b58900"           # Bright Yellow
export COLOR_13="#1e6fcc"           # Bright Blue (Folder)
export COLOR_14="#5c21a5"           # Bright Magenta
export COLOR_15="#158c86"           # Bright Cyan
export COLOR_16="#aaaaaa"           # Bright White

export BACKGROUND_COLOR="#f2eede"   # Background
export FOREGROUND_COLOR="#000000"   # Foreground (Text)

export CURSOR_COLOR="#000000" # Cursor

# | ===========================================================================
# | Apply Colors
# | ===========================================================================
SCRIPT_PATH="${SCRIPT_PATH:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
PARENT_PATH="$(dirname "${SCRIPT_PATH}")"

# Allow developer to change url to forked url for easier testing
# IMPORTANT: Make sure you export this variable if your main shell is not bash
BASE_URL=${BASE_URL:-"https://raw.githubusercontent.com/Gogh-Co/Gogh/master"}


if [[ -e "${PARENT_PATH}/apply-colors.sh" ]]; then
  bash "${PARENT_PATH}/apply-colors.sh"
else
  if [[ "$(uname)" = "Darwin" ]]; then
    # OSX ships with curl and ancient bash
    bash -c "$(curl -so- "${BASE_URL}/apply-colors.sh")"
  else
    # Linux ships with wget
    bash -c "$(wget -qO- "${BASE_URL}/apply-colors.sh")"
  fi
fi
