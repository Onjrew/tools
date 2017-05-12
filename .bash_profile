
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
PS1="\[\033[36m\]\W\[\033[m\]$ "

# Set colours for grep
export GREP_OPTIONS='--color=auto'

# Erase dupes from history
export HISTCONTROL=ignoredups

# Include aliases
if [ -f ~/.bash_aliases ];
then
    . ~/.bash_aliases
fi

##
# Your previous /Users/Andrew/.bash_profile file was backed up as /Users/Andrew/.bash_profile.macports-saved_2016-06-10_at_21:34:25
##

# MacPorts Installer addition on 2016-06-10_at_21:34:25: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# Add the GDAL/OGR utilities to the PATH
export PATH=/Library/Frameworks/GDAL.framework/Versions/2.1/Programs/:$PATH

# Increase file open limit
ulimit -n 65536 unlimited
