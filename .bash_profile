
# Add NVM directory and load NVM
export NVM_DIR="/Users/aferguson/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Add local bin directory before PATH
# This is locally installed programs are
# found first, and can be installed/updated
# by Homebrew
export PATH=/usr/local/bin:$PATH

# Set colours for the terminal
# For a detailed exerpt of the colors/meanings see:
# http://it.toolbox.com/blogs/lim/how-to-fix-colors-on-mac-osx-terminal-37214
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagacgx

# Set prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

PS1="\[\033[36m\]\W\[\033[m\] (\033[32m\]\$(parse_git_branch)\033[m\])\n$ "

# Set colours for grep
export GREP_COLORS='ln=31:mt=0;32'

# Erase dupes from history
export HISTCONTROL=ignoredups

# Include aliases
if [ -f ~/.bash_aliases ];
then
    . ~/.bash_aliases
fi

# Set up bash completion for git
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

# MacPorts Installer addition on 2016-06-10_at_21:34:25: adding an appropriate PATH variable for use with MacPorts.
#export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# Add the GDAL/OGR utilities to the PATH
#export PATH=/Library/Frameworks/GDAL.framework/Versions/2.1/Programs/:$PATH

# Increase file open limit
#ulimit -n 65536 unlimited
