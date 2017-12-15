# PATH VARIABLES
# --------------
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh # Load autojump
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# DEFAULT IMPLEMENTATIONS
# -----------------------
export EDITOR=atom			      # Preferred editor set to Atom
alias cp='cp -iv'                 # Preferred 'cp' implementation
alias mv='mv -iv'                 # Preferred 'mv' implementation
alias ln='ln -iv'                 # Preferred 'ln' implementation
alias mkdir='mkdir -pv'           # Preferred 'mkdir' implementation
cd () { builtin cd "$@"; ls; }    # List directory contents upon 'cd'

# APPLICATION SHORTCUTS
# ---------------------
alias aria="cd ~/Downloads && aria2c --enable-rpc --rpc-listen-all"

# NAVIGATION SHORTCUTS
# --------------------
trash () { command mv "$@" ~/.Trash ; }     # Moves a file to the MacOS trash
alias c='clear'                             # Clear terminal display
alias f='open -a Finder ./'                 # Opens current directory in MacOS Finder
alias ~="cd ~"                              # Go Home
alias copykey="cat ~/.ssh/id_rsa.pub | pbcopy"
cdf () {
	currFolderPath=$( /usr/bin/osascript <<EOT
		tell application "Finder"
			try
		set currFolder to (folder of the front window as alias)
			on error
		set currFolder to (path to desktop folder as alias)
			end try
			POSIX path of currFolder
		end tell
EOT
	)
	echo "cd to \"$currFolderPath\""
	cd "$currFolderPath"
}

# SEARCH SHORTCUTS
# ----------------
ff () { /usr/bin/find . -name "$@" ; }      # Find file under the current directory
ffs () { /usr/bin/find . -name "$@"'*' ; }  # Find file whose name starts with a given string
ffe () { /usr/bin/find . -name '*'"$@" ; }  # Find file whose name ends with a given string

# SYSTEM MANAGEMENT
# -----------------
# Recursively delete .DS_Store files
alias clean="find . -type f -name '*.DS_Store' -ls -delete"

# SQL SHORTCUTS
# -------------
# alias sqlstart="mysql.server start"
# alias sqlstop="mysql.server stop"
# alias sqlroot="mysql -h 127.0.0.1 -u root -p"

# ENVIRONMENT VARIABLES
# ---------------------
source ~/.environment

# PROMPT
# ------
export PS1="\[\e[0;33m\]>\[\e[0m\] "
