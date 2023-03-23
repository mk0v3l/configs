source .profile
#tmux
#tmux source-file ~/.tmux.config 
# source ~/.zsh/zsh-dircolors-nord/zsh-dircolors-nord.zsh

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH="/usr/lib/w3m/:$PATH"
export PATH="$HOME/snap/:$PATH"
export PATH="$HOME/.gord/:$PATH"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
 # ZSH_THEME="mlh"
ZSH_THEME="nord-extended/nord"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
#ZSH_THEME_RANDOM_CANDIDATES=( "gozilla" "mlh" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions web-search zsh-dircolors-nord)
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#exec .zshrc

alias transfert="cd /home/mkovel/Documents/transfert"


alias cl="clear"

#Discord
alias cordless="/home/mkovel/cordless/cordless"
# alias gord="/home/mkovel/gord/gord"

alias python="python3"

alias work="cd ~/work"

alias gitpush="~/.scripts/gitpush"

alias clone="gh repo clone"

alias tma="tmux a"
alias tms="tmux source-file ~/.tmux.conf"

alias nv="/snap/bin/nvim -p "

alias DirectBackup_="sudo dd if=/dev/mmcblk0 of=/dev/sda bs=4096 status=progress conv=notrunc,noerror"

# alias ddmount="sshfs -o allow_other mkovel@192.168.1.61:/home/mkovel/DD DD"
# alias ddmountext="sshfs -o allow_other mkovel@109.133.251.234:/home/mkovel/DD DD"
# alias ddmountext="sudo mount /dev/sda1 DD"
alias hpmount="sshfs -o allow_other mkovel@192.168.1.61:/home/mkovel /home/mkovel/HP"
# alias hpmountext="sshfs -o allow_other mkovel@109.133.251.234:/ /home/mkovel/remote_hp"
alias ipimount="sshfs -o allow_other mkovel@192.168.1.25:/home/mkovel ~/IPI" 
alias ddmount="sshfs -o allow_other mkovel@192.168.1.77:/home/mkovel/DD ~/DD" 

alias sshipi="ssh mkovel@192.168.1.77"
alias sshp="ssh mkovel@192.168.1.61"
alias sshpext="ssh mkove@109.133.251.234"
alias usbmount="sudo mount -o umask=0 /dev/sdb1 /home/mkovel/USB"
# alias ddmount="sudo mount -o umask=0 /dev/sda1 /home/mkovel/DD"
alias nvzsh="nv ~/.zshrc; reload"
alias reload_torrent="scp /home/mkovel/Downloads/*.torrent mkovel@mkpi.local:/home/mkovel/.ratio_master/torrents"
alias reload=". ~/.zshrc"
alias duckduck="w3m https://duckduckgo.com"
alias gg="w3m https://google.com"
alias cleanVim="rm ~/.local/state/nvim/swap/*"
alias cloneGenie="git clone ssh://git@gitlab.ulb.be:30422/ulb-infof307/2023-groupe-3.git"
alias gs="git status"
function ga() {
	git add $1
	gs
	# git status
}
function gc() {
	txt=$1
	for i in "${@:2}"; do
		txt="$txt $i"
	done
	git commit -m "$txt"
	gs
}
alias gp="git push"

# var=/file.torrent 
# transmission-edit  $var -d $(transmission-show $var |egrep -o 'https?://[^ ]+')

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
