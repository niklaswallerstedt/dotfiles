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

# Source all function files
if test -d ~/.config/fish/functions
    for f in ~/.config/fish/functions/*
        . $f
    end
end

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/__tabtab.fish ]; and . ~/.config/tabtab/__tabtab.fish; or true

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/niklaswallerstedt/Development/Telia/telia-sense-web-view-back-end/node_modules/tabtab/.completions/serverless.fish ]; and . /Users/niklaswallerstedt/Development/Telia/telia-sense-web-view-back-end/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/niklaswallerstedt/Development/Telia/telia-sense-web-view-back-end/node_modules/tabtab/.completions/sls.fish ]; and . /Users/niklaswallerstedt/Development/Telia/telia-sense-web-view-back-end/node_modules/tabtab/.completions/sls.fish
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /Users/niklaswallerstedt/Development/Telia/telia-sense-web-view-back-end/node_modules/tabtab/.completions/slss.fish ]; and . /Users/niklaswallerstedt/Development/Telia/telia-sense-web-view-back-end/node_modules/tabtab/.completions/slss.fish