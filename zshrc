# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
plugins=(git)

# User configuration

export PATH=/usr/local/bin:$PATH
#export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
# export MANPATH="/usr/local/man:$MANPATH"

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
alias dumpap='adb shell dumpsys media.audio_policy'
alias mylog='adb logcat -v threadtime | grep -e DD'
alias timelog='adb logcat -v threadtime'
alias mylog2='timelog | grep -i "PRLog \| DD"'

alias goto-b2g='cd /Volumes/firefoxos/B2G'
alias goto-gaia='cd /Volumes/firefoxos/B2G/gaia'
alias goto-mc='cd ~/mozilla-central/'

alias gaia-unit-test='/Applications/Firefox.app/Contents/MacOS/firefox -profile /Volumes/firefoxos/B2G/gaia/profile-debug/'

alias b2g-desktop='~/mozilla-central/mach run -profile /Volumes/firefoxos/B2G/gaia/profile-debug'

alias build-flash-gecko='/Volumes/firefoxos/B2G/build.sh gecko && /Volumes/firefoxos/B2G/flash.sh gecko'
alias build-flash-gaia='/Volumes/firefoxos/B2G/build.sh gaia && /Volumes/firefoxos/B2G/flash.sh gaia'

alias run-mochitest='./mach mochitest --utility-path ./b2g_sdk/b2g'
alias push-try-all='./mach try -b do -p all -u all -t none'
alias open-audiochannel-log='export NSPR_LOG_MODULES="AudioChannel:5"'
alias build-run-fennec='./mach build && ./mach package && ./mach install && ./mach run'
alias refresh-zsh='source ~/.zshrc'

source $(brew --prefix nvm)/nvm.sh
