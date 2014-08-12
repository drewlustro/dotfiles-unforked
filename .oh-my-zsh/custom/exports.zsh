export GIT_EDITOR=vim
export VISUAL=atom
export EDITOR=atom

export WORKON_HOME=/sites/envs
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/usr/local/lib

# Larger bash history (allow 32³ entries; default is 500)
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoredups

# Make some commands not show up in history
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"

# Prefer US English and use UTF-8
export LANG="en_US"
export LC_ALL="en_US.UTF-8"

# Highlight section titles in manual pages
export LESS_TERMCAP_md="$ORANGE"

# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"

# Always enable colored `grep` output
export GREP_OPTIONS="--color=auto"

# Prefer 64-bit architecture when building
export ARCHFLAGS='-arch x86_64'

# Export-dependent aliases
alias zshconfig="$EDITOR ~/.zshrc"
