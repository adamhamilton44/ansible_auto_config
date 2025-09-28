# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 7

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
COMPLETION_WAITING_DOTS="true"

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
plugins=(git
fzf-tab
)

source $ZSH/oh-my-zsh.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"
# You may need to manually set your language environment
# export LANG=en_US.UTF-8
# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nano'
 else
   export EDITOR='nano'
 fi

# Compilation flags
export ARCHFLAGS="-arch $(uname -m)"

# Example aliases
alias c='clear; echo Currently logged in on $TTY, as $USERNAME in directory $PWD.' # clear screen
alias ping='ping -c 5'
alias path='print -l $path'
alias mkdir='mkdir -pv'
alias psmem='ps -e -orss=,args= \| sort -b -k1 -nr'
alias psmem10='ps -e -orss=,args= \| sort -b -k1 -nr \| head -n 10'
alias pscpu='ps -e -o pcpu,cpu,nice,state,cputime,args \|sort -k1 -nr'
alias pscpu10='ps -e -o pcpu,cpu,nice,state,cputime,args \|sort -k1 -nr \| head -n 10'
alias hist10='print -l ${(o)history%% *} \| uniq -c \| sort -nr \| head -n 10'
alias doc='cd /home/adam/Documents/' # most used directory
alias desk='cd /home/adam/Desktop/' #
alias LL='cd /home/adam/Documents/LearnLinux/'
alias BH='cd /home/adam/Documents/BlackHat/'
alias GH='cd /home/adam/Documents/Github/'
alias SK='cd /home/adam/Documents/Github/CyberSecurityToolKit/'
alias ..='cd ..' # move up 1
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias .6='cd ../../../../../..'
alias .7='cd ../../../../../../..'
alias sai='sudo apt update && sudo apt -y install' # package updater and downloader
alias gc= 'git clone' # github package downloader
alias gitck='gitleaks detect -v'
alias ah='sudo su adam' # switching user to adam
alias mman='pinfo' # a colorful man pages
alias online='arp-scan --interface wlan0 -l' # best option to test who is on network
alias online1='netdiscover -i wlan0' # 2nd way to test who is on network
alias l='eza --color=always --icons=always --git-ignore'
alias ls='eza -lh --color=always --icons=always --git-ignore' # normal listing
alias la='eza -lha --color=always --icons=always' # list all long format of all files including .dot file
alias lat='eza -lha --tree --color=always' # list all tree format
alias lss='eza -lhas --total-size --color=always --icons=always' # list by size
alias lm='eza -lham --color=always --icons=always' # list by modify time
alias ld='eza -lhd --color=always --icons=always' # directories only
alias lt='eza -lh --tree --color=always --icons=always --git-ignore' # list tree like
alias ltd='eza -lhd --tree --color=always --icons=always --git-ignore' # list tree like directories only
alias lf='eza -lhf --color=always --icons=always --git-ignore' # list files only
alias onion='oniux'
alias uzl='unzip -l'
alias zipup='zip -r -9'
#alias syncusb='rsync -avL /home/adam/Documents/ /media/adam/fec1b5dc-1884-4125-8c4b-db4de60ae754/'
#alias updateusb='sudo rsync -avuL /home/adam/Documents/ /media/adam/b0116cf6-a1a2->
alias encrypt='ccrypt -f -v' # encryption against super computer's
alias decrypt='ccrypt -d' # decrypt from above line
alias code='code-oss' #visual studio code
alias torb='torbrowser-launcher' # safe browsing
alias down='shutdown now' # shutdown
alias n='nano' # non root nano
alias yt='youtubedl-gui'
alias msf='msfconsole'
alias SS='flameshot'
alias tltr='tldr'
alias count'ls * | wc -l'
alias myip='curl http://ip-api.com' # show real ip, country, city, lat, lon, alot of info
alias weather='/usr/local/bin/weather -l Iowa'
alias zrc='nano ~/.zshrc'
alias mypid="ps | awk -F ' ' 'NR%2==0' | awk '{print $1}' | sed -n '1p' "
alias rmspaces="sed -i -e 's/ *$//' -e 's/[[:space:]]*$//'   " # remove extra spaces and tabs at the end of a line needs a file name
alias cal='ncal -C'
alias help='curl cheat.sh'
alias ascii='figlet'
alias df='duf'
alias stk='setoolkit'
alias curl='curl -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36"'
alias scripthelp='cat /home/adam/Documents/LearnLinux/adams_script_helpers.md'
alias fman='compgen -c | fzf | xargs man'

# --- setup fzf theme ---
fg="#CBE0F0"
bg="#011628"
bg_highlight="#143652"
purple="#B388FF"
blue="#06BCE4"
cyan="#2CF9ED"

export FZF_DEFAULT_OPTS="--color=fg:${fg},bg:${bg},hl:${purple},fg+:${fg},bg+:${bg_highlight},hl+:${purple},info:${blue},prompt:${cyan},pointer:${cyan},marker:${cyan},spinner:${cyan},header:${cyan}"

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"
_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}

show_file_or_dir_preview="if [ -d {} ]; then eza --tree --color=always {} | head -200; else bat -n --color=always --line-range :500 {}; fi"
export FZF_CTRL_T_OPTS="--preview '$show_file_or_dir_preview'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
    export|unset) fzf --preview "eval 'echo \${}'"         "$@" ;;
    ssh)          fzf --preview 'dig {}'                   "$@" ;;
    *)            fzf --preview "$show_file_or_dir_preview" "$@" ;;
  esac
}

export BAT_THEME=tokyonight_night
# enable auto-suggestions based on the history
if [ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    . /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    # change suggestion color
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#999'
fi
# enable command-not-found if installed
if [ -f /etc/zsh_command_not_found ]; then
    . /etc/zsh_command_not_found
fi
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
xset s off #-dpms
### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

autoload -U compinit; compinit
source ~/fzf_tab/fzf-tab.plugin.zsh
### End of Zinit's installer chunk
fstr() {
    grep -Rnw "." -e "$1" 2>/dev/null
}

eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
source /home/adam/Documents/Github/CyberSecurityToolKit/bin/tab_complete.cstk
###-begin-npm-completion-###
#
# npm command completion script
#
# Installation: npm completion >> ~/.bashrc  (or ~/.zshrc)
# Or, maybe: npm completion > /usr/local/etc/bash_completion.d/npm
#

if type complete &>/dev/null; then
  _npm_completion () {
    local words cword
    if type _get_comp_words_by_ref &>/dev/null; then
      _get_comp_words_by_ref -n = -n @ -n : -w words -i cword
    else
      cword="$COMP_CWORD"
      words=("${COMP_WORDS[@]}")
    fi

    local si="$IFS"
    if ! IFS=$'\n' COMPREPLY=($(COMP_CWORD="$cword" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           npm completion -- "${words[@]}" \
                           2>/dev/null)); then
      local ret=$?
      IFS="$si"
      return $ret
    fi
    IFS="$si"
    if type __ltrim_colon_completions &>/dev/null; then
      __ltrim_colon_completions "${words[cword]}"
    fi
  }
  complete -o default -F _npm_completion npm
elif type compdef &>/dev/null; then
  _npm_completion() {
    local si=$IFS
    compadd -- $(COMP_CWORD=$((CURRENT-1)) \
                 COMP_LINE=$BUFFER \
                 COMP_POINT=0 \
                 npm completion -- "${words[@]}" \
                 2>/dev/null)
    IFS=$si
  }
  compdef _npm_completion npm
elif type compctl &>/dev/null; then
  _npm_completion () {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    if ! IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       npm completion -- "${words[@]}" \
                       2>/dev/null)); then

      local ret=$?
      IFS="$si"
      return $ret
    fi
    IFS="$si"
  }
  compctl -K _npm_completion npm
fi
###-end-npm-completion-###
