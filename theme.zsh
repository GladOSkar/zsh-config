ZSH_THEME="powerlevel9k/powerlevel9k"

# root_indicator
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=( context dir dir_writable vcs newline custom_indicator )

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=( status background_jobs command_execution_time history newline )

POWERLEVEL9K_RPROMPT_ON_NEWLINE=false

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=""

POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=2
POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=1

# ⚡ 🔥 ☢️ %% 🌳 🏎️

POWERLEVEL9K_CUSTOM_INDICATOR="if [[ `id -u` -eq 0 ]]; then echo -n '🔥'; else echo -n '🌳'; fi"
POWERLEVEL9K_CUSTOM_INDICATOR_BACKGROUND="black"
POWERLEVEL9K_CUSTOM_INDICATOR_FOREGROUND="yellow"