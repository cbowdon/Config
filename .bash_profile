# Geant4 env variables
#alias geant4="export G4WORKDIR=/Users/chris/Dropbox/g4/;
#export DYLD_LIBRARY_PATH=/Applications/CLHEP/lib;
#source /Applications/geant4.9.4.p02/env.sh;"

#Add /usr/local/bin to PATH
export PATH=/usr/local/bin:$PATH

# GNU coreutils
export PATH=/opt/local/libexec/gnubin:$PATH

# MacPorts
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# Racket
export PATH=/Applications/Racket\ v5.3.4/bin:$PATH

# Haskell
export PATH=/Users/chris/Library/Haskell/bin:$PATH

# Java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_72.jdk/Contents/Home/

# Clojure
export PATH=/Users/chris/Library/Clojure/bin:$PATH
#alias clojure='java -cp .m2/repository/org/clojure/clojure/1.5.1/clojure-1.5.1.jar clojure.main'

# TypeScript
export TS_LIB=/usr/local/lib/node_modules/typescript/bin/lib.d.ts

# Maven
export M2_HOME=/usr/local/apache-maven/apache-maven-3.1.1
export M2=$M2_HOME/bin
export PATH=$M2:$PATH

# let's have a nicer prompt:
PS1='\[\e[0;32m\]\h: \W\[\e[0m\] '
# Enable colors for ls
alias ls="ls -G"
alias ll="ls -lG"

# Vi mode
alias svi="set -o vi"
alias vim="mvim -v"

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

# Colorful git!
git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
if [ -e /Users/chris/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/chris/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

function xunit {
    mono xunit.console.clr4.exe ../../AutoFixture/Src/AutoFixtureUnitTest/bin/Debug/Ploeh.AutoFixtureUnitTest.dll > ~/temp.log
}
