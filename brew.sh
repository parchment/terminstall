#!/bin/zsh

# Install command-line tools using Homebrew.s
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure we’re using the latest Homebrew.
brew update
# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed
# Install `wget` with IRI support.
brew install wget

# Install more recent versions of some macOS tools.
brew install vim
brew install grep
brew install openssh
brew install screen

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2
brew tap homebrew/cask-fonts;                           # Access homebrew fonts
brew cask install font-source-code-pro;                 # Command-line dev font

# Install other useful binaries.
brew install ack
brew install git
brew install git-lfs
brew install ssh-copy-id
brew install pandoc                                     # File conversion
brew install pandoc-citeproc                            # Bibliography conversion
brew tap heroku/brew && brew install heroku             # Toolbelt for Heroku
brew install mpv                                        # Media player
brew install aria2                                      # Command-line p2p
brew install unrar                                      # Command-line unrar
brew install mysql                                      # MySQL database server
brew install postgres                                   # Postgres database server
brew install jrnl                                       # Command-line journal
brew install handbrake                                  # Media/codec conversion
brew install tmux                                       # SCreen multiplexer
brew install autojump                                   # File navigation with ease
brew install irssi                                      # IRC client
brew install jq                                         # JSON navigator
brew install csvkit                                     # CSV utilities
brew tap homebrew/services
sudo gem install iStats                                 # Hardware monitoring
sudo gem install sass                                   # Syntactically awesome

# Global Node installs
brew install node                                       # Web development environment
npm install -g nodemon                                  # Node demon for ease of use
npm install -g n                                        # Node version manager
npm install -g grunt-cli                                # Global Grunt install

# Install applications
brew cask install --appdir="/Applications" atom          # Text editor
brew cask install --appdir="/Applications" github        # Git client
brew cask install --appdir="/Applications" firefox       # Safari alternative
brew cask install --appdir="/Applications" google-chrome # Safari alternative
brew cask install --appdir="/Applications" pdf-expert    # PDF viewer/editor
brew cask install --appdir="/Applications" tableplus     # Relational DB editor
brew cask install --appdir="/Applications" dropbox       # Cloud storage
brew cask install --appdir="/Applications" sketch        # Vector illustration
brew cask install --appdir="/Applications" transmit      # FTP manager
brew cask install --appdir="/Applications" mendeley      # Reference manager

# Remove outdated versions from the cellar.
brew cleanup
