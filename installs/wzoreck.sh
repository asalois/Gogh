#!/usr/bin/env bash

export PROFILE_NAME="Wzoreck"

export COLOR_01="#2E3436"           # Black (Host)
export COLOR_02="#FC6386"           # Red (Syntax string)
export COLOR_03="#A9DC76"           # Green (Command)
export COLOR_04="#FCE94F"           # Yellow (Command second)
export COLOR_05="#FB976B"           # Blue (Path)
export COLOR_06="#75507B"           # Magenta (Syntax var)
export COLOR_07="#34E2E2"           # Cyan (Prompt)
export COLOR_08="#FFFFFF"           # White

export COLOR_09="#989595"           # Bright Black
export COLOR_10="#FC6386"           # Bright Red (Command error)
export COLOR_11="#A9DC76"           # Bright Green (Exec)
export COLOR_12="#FCE94F"           # Bright Yellow
export COLOR_13="#FB976B"           # Bright Blue (Folder)
export COLOR_14="#AB9DF2"           # Bright Magenta
export COLOR_15="#34E2E2"           # Bright Cyan
export COLOR_16="#D1D1C0"           # Bright White

export BACKGROUND_COLOR="#424043"   # Background
export FOREGROUND_COLOR="#FCFCFA"   # Foreground (Text)

export CURSOR_COLOR="#FCFCFA" # Cursor

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
