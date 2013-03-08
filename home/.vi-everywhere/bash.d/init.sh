#!/usr/bin/env bash

# ## Environment Variables
#
# ### See Also
#
# * [VISUAL vs EDITOR what's the difference?](http://unix.stackexchange.com/questions/4859/visual-vs-editor-whats-the-difference)

# It might make more sense to have `vi -e` for `EDITOR`
export EDITOR="vi"
# Has `vi` keybindings by default (although you can kind of use `vim` as a pager).
export PAGER="less"
export VISUAL="vi"

# ## Bindings

# Allow a key-press to clear the screen.  Typically, this is ^L in emacs mode.
#
# FIXME: This doesn't seem to work in GNU screen, but works elsewhere.
bind -x '"\C-l":clear'

# ## Aliases
#
# Add vi input to progams that don't use GNU readline.
#
# ### Dependencies
#
# Ubuntu: `sudo apt-get install rlwrap`
# 
# ### See Also
#
# * http://nodejs.org/docs/v0.4.7/api/repl.html

# FIXME: Tab completion
alias node="env NODE_NO_READLINE=1 rlwrap node"
alias coffee="env NODE_NO_READLINE=1 rlwrap coffee"