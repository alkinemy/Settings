export LC_ALL=ko_KR.UTF-8  
export LANG=ko_KR.UTF-8

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster_custom"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting)

# User configuration

export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

export fpath=(/usr/local/Cellar/zsh/$ZSH_VERSION/share/zsh/functions/ $fpath)
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# bind keys(forward, backward)
bindkey -e
bindkey '^[[1;9C' forward-word
bindkey '^[[1;9D' backward-word

#apply autojump script
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

#add alias
alias ah='sudo $(fc -ln -1)'
alias stp='$HOME/Documents/settings/scripts/start_program.sh'

export HOMEBREW_GITHUB_API_TOKEN="488e2fffe0daa5d37c87e7e1c893440da4a260da"

#define go environment
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

#define JAVA_HOME
export JAVA_6_HOME=/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
export JAVA_7_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home
export JAVA_8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home
export JAVA_9_HOME=/Library/Java/JavaVirtualMachines/jdk-9.jdk/Contents/Home
export JAVA_10_HOME=/Library/Java/JavaVirtualMachines/jdk-10.0.1.jdk/Contents/Home
export JAVA_11_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.2.jdk/Contents/Home
export JAVA_11_HOME=/Library/Java/JavaVirtualMachines/jdk-12.0.2.jdk/Contents/Home
export JAVA_HOME=$JAVA_11_HOME

#hadoop
export HADOOP_HOME=/usr/local/Cellar/hadoop/2.8.1
alias hstart=$HADOOP_HOME/sbin/start-all.sh
alias hstop=$HADOOP_HOME/sbin/stop-all.sh

#hbase
export HBASE_HOME=/Users/al/programs/hbase/hbase-1.2.6

export PROTOC_HOME=/Users/joke/Documents/program/protoc/protoc-3.0.2-osx-x86_64/bin
export PATH=$PATH:$PROTOC_HOME:$HADOOP_HOME/bin

autoload -U compinit && compinit
zmodload -i zsh/complist

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# zplug
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# scmpuff
eval "$(scmpuff init -s)"
alias gpo="git push origin"
alias gpr="git push release"
alias gfr="git fetch release"
alias gcod="gco develop"
alias grbd="grb release/develop"
alias gpod="gpo develop"

alias gcode="gco dev"
alias grbde="grb release/dev"
alias gpode="gpo dev"

# mysql
export PATH=$PATH:/usr/local/mysql/bin/

# virtualenvwrapper
export PATH=$PATH:/usr/local/Cellar/python/3.7.4/bin
export WORKON_HOME=/Users/al/virtualenv
export VIRTUALENVWRAPPER_PYTHON=/Library/Frameworks/Python.framework/Versions/3.7/bin/python3

#source /usr/local/bin/virtualenvwrapper.sh > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "virtualenvwrapper setup succeeded"
#else
#    echo "virtualenvwrapper setup failed"
#fi

# kube
if [ $commands[kubectl] ]; then
  source <(kubectl completion zsh)
fi

# tomcat
export CATALINA_HOME=/Users/al/programs/tomcat/current

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/al/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/al/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/al/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/al/Downloads/google-cloud-sdk/completion.zsh.inc'; fi


# alias
alias k="kubectl"
alias h="helm"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
