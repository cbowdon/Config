# Geant4 env variables
#alias geant4="export G4WORKDIR=/Users/chris/Dropbox/g4/;
#export DYLD_LIBRARY_PATH=/Applications/CLHEP/lib;
#source /Applications/geant4.9.4.p02/env.sh;"

# Setting PATH for Python 2.7
export PATH="/Library/Frameworks/Python.framework/Versions/2.7-32/bin:${PATH}"

# MacPorts
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# Racket
export PATH=/Applications/Racket\ v5.3.4/bin:$PATH

# MySQL
export PATH=/usr/local/mysql/bin:$PATH

# Haskell
export PATH=/Users/chris/Library/Haskell/bin:$PATH

#Add /usr/local/bin to PATH
export PATH=/usr/local/bin:$PATH

# Clojure
export PATH=/Users/chris/Library/Clojure/bin:$PATH

# let's have a nicer prompt:
PS1='\[\e[0;32m\]\h: \W\[\e[0m\] '
# Enable colors for ls
alias ls="ls -G"
alias ll="ls -lG"

# Vi mode
alias svi="set -o vi"

# OpenCV
export LD_LIBRARY_PATH=/usr/local/lib
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig

function opencv () {
	echo "Compiling $1..."
	# to link ALL the opencv libs:
	g++ $1.cpp -o $1 -bind_at_load `pkg-config --cflags opencv` `pkg-config --libs opencv`
	echo "Done"
}

function opencv11 () {
	echo "Compiling $1..."
	c++ -std=c++11 -stdlib=libc++ $1.cpp -o $1 -bind_at_load `pkg-config --cflags opencv` `pkg-config --libs opencv`
	echo "Done"
}

alias clojure='java -cp .m2/repository/org/clojure/clojure/1.5.1/clojure-1.5.1.jar clojure.main'
