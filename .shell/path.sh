# path.sh

if [ "$PLATFORM" = "osx" ]; then
    # Prepend GNU Coreutils path and manpath to existing $PATH/$MANPATH
    if [ -x "$(which brew)" ] && [ -d "$(brew --prefix coreutils)/libexec/gnubin" ]; then
        # Add GNU coreutils path/man (installed with 'brew install coreutils')
        COREUTILS_BIN="$(brew --prefix coreutils)/libexec/gnubin";
        COREUTILS_MAN="$(brew --prefix coreutils)/libexec/gnuman";
        [ -d $COREUTILS_BIN ] && export PATH="$COREUTILS_BIN:$PATH";
        [ -d $COREUTILS_MAN ] && export MANPATH="$COREUTILS_MAN:$MANPATH";
    fi;
fi;

# Load RVM scripts if RVM is installed
if [ -s "$HOME/.rvm/scripts/rvm" ]; then
    source "$HOME/.rvm/scripts/rvm";  # This loads RVM into a shell session.
    [ -d "$HOME/.rvm/bin" ] && export PATH="$PATH:$HOME/.rvm/bin"; # Add RVM to PATH for scripting
fi;

# setup PATH to check $HOME/bin first, (then /usr/local/bin, /usr/bin ... etc)
[ -d "$HOME/bin" ] && export PATH="$HOME/bin:$PATH";