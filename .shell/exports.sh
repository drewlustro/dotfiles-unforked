# exports.sh

# ----------------------------------------
# Platform-Agnostic
# ----------------------------------------
export GIT_EDITOR=vim
export VISUAL=vim
export EDITOR=vim

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

# Prefer native architecture when building
export ARCHFLAGS="-arch $(uname -m)";

# ----------------------------------------
# Mac OS X
# ----------------------------------------
if [ "$PLATFORM" = "osx" ]; then
    # Link Homebrew casks in `/Applications` rather than `~/Applications`
    export HOMEBREW_CASK_OPTS="--appdir=/Applications";
    export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/usr/local/lib;

    # prefer Atom.app as default editor, then Sublime Text, if either exist
    if [ -x "$(which atom)" ]; then
        export VISUAL=atom;
        export EDITOR=atom;
    elif [ -x "$(which subl)" ]; then
        export VISUAL=atom;
        export EDITOR=atom;
    fi;
fi;







