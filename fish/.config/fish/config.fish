# Change locale messages to english
set -x LC_MESSAGES en_US.UTF-8

# Remove greeting
set fish_greeting

# Switch to vi key bindings
fish_vi_key_bindings

# Export GPG to work correctly
set -x GPG_TTY (tty)
