# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Source Aliases
source "$HOME/.aliases"


export PATH="$HOME/tools/nodejs/bin:$PATH"
export PATH="$HOME/.npm-packages/bin:$PATH"
# Java JDTLS
export PATH="$HOME/tools/jdtls/:$PATH"
export JDTLS_HOME="$HOME/tools/jdtls/:$PATH"
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin
export LIBGL_ALWAYS_SOFTWARE=1
export SPICETIFY_INSTALL="/home/manasmengle/.spicetify"
export PATH="$SPICETIFY_INSTALL:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/tools/i3-battery-popup-1.0.0:$PATH"
export PATH="$HOME/tools/platform-tools/:$PATH"
# set DISPLAY to use X terminal in WSL
# in WSL2 the localhost and network interfaces are not the same than windows
if grep -q WSL2 /proc/version; then
    # execute route.exe in the windows to determine its IP address
    DISPLAY=$(route.exe print | grep 0.0.0.0 | head -1 | awk '{print $4}'):0.0
fi

