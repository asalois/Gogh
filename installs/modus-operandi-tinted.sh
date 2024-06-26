#!/usr/bin/env bash

export PROFILE_NAME="Modus Operandi Tinted"

export COLOR_01="#fbf7f0"           # Black (Host)
export COLOR_02="#a60000"           # Red (Syntax string)
export COLOR_03="#006800"           # Green (Command)
export COLOR_04="#6f5500"           # Yellow (Command second)
export COLOR_05="#0031a9"           # Blue (Path)
export COLOR_06="#721045"           # Magenta (Syntax var)
export COLOR_07="#005e8b"           # Cyan (Prompt)
export COLOR_08="#000000"           # White

export COLOR_09="#efe9dd"           # Bright Black
export COLOR_10="#d00000"           # Bright Red (Command error)
export COLOR_11="#008900"           # Bright Green (Exec)
export COLOR_12="#808000"           # Bright Yellow
export COLOR_13="#0000ff"           # Bright Blue (Folder)
export COLOR_14="#dd22dd"           # Bright Magenta
export COLOR_15="#008899"           # Bright Cyan
export COLOR_16="#595959"           # Bright White

export BACKGROUND_COLOR="#fbf7f0"   # Background
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
