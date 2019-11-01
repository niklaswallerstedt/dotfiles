# Change locale messages to english
set -x LC_MESSAGES en_US.UTF-8

# Remove greeting
set fish_greeting

# Switch to vi key bindings
fish_vi_key_bindings

# Export GPG to work correctly
set -x GPG_TTY (tty)

# Fix Homebrew's sbin was not found in your PATH but you have installed formulae that put executables in /usr/local/sbin
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
#iTerm2 shell integration
source ~/.iterm2_shell_integration.(basename $SHELL)

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/niklaswallerstedt/.npm/_npx/47954/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish ]; and . /Users/niklaswallerstedt/.npm/_npx/47954/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/niklaswallerstedt/.npm/_npx/47954/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish ]; and . /Users/niklaswallerstedt/.npm/_npx/47954/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /Users/niklaswallerstedt/.npm/_npx/47954/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.fish ]; and . /Users/niklaswallerstedt/.npm/_npx/47954/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.fish
