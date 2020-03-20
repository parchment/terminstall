#!/bin/zsh

# Install command-line tools using Homebrew.s
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure we’re using the latest Homebrew.
brew update
# Upgrade any already-installed formulae.
brew upgrade
# Tap some casks.
brew tap homebrew/services
brew tap bramstein/webfonttools
brew tap homebrew/cask-fonts

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
brew install ack
brew install vim
brew install grep
brew install openssh
brew install tmux                                       # Screen multiplexer
brew install nnn                                        # Better file navigation

# Install font tools.
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2
brew cask install font-source-code-pro
brew cask install font-ubuntu

# Install research tools.
brew install pandoc                                     # File conversion
brew install pandoc-citeproc                            # Bibliography conversion
sudo gem install gist					                # Github Gist manager

# Install development tools.
brew install git
brew install git-lfs
brew install ssh-copy-id
brew tap heroku/brew && brew install heroku             # Toolbelt for Heroku
brew install csvkit                                     # CSV utilities
sudo gem install sass                                   # Syntactically awesome

# Install media tools.
brew install aria2                                      # Command-line p2p
brew cask install iina                                  # Media player
brew install handbrake                                  # Media/codec conversion

# Install other useful binaries.
brew install unrar                                      # Command-line unrar
sudo gem install iStats                                 # Hardware monitoring
brew tap AlexanderWillner/tap && brew install things.sh # Things 3 CLI integration
brew install youtube-dl                                 # Youtube downloader
brew tap k-vernooy/tap && brew install tetris           # Tetris, because of course!

# Install browsers.
brew cask install --appdir="/Applications" firefox
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" beaker-browser

# Install Node tools globally.
brew install node                                       # Web development environment
npm install -g n                                        # Node version manager
npm install -g nodemon                                  # Node demon for ease of use
npm install -g grunt-cli                                # Global Grunt install

# Install applications.
brew cask install --appdir="/Applications" atom         # Text editor
brew cask install --appdir="/Applications" pdf-expert   # PDF viewer/editor
brew cask install --appdir="/Applications" tableplus    # Relational DB editor
brew cask install --appdir="/Applications" dropbox      # Cloud storage
brew cask install --appdir="/Applications" sketch       # Vector illustration

# Remove outdated versions from the cellar.
brew cleanup

# Install Oh-My-Zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
