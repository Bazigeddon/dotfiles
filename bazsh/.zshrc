# Define your own colour scheme by redefining the following variables
# To see what number represents what colour run 'spectrum_ls' in an 'oh_my_zhs'
fg_error=     $FG[196]      # the error if a process not temrinated correctly
fg_user=      $FG[004]	    # the user name
fg_at=        $FG[066]      # the @ sign between user and host
fg_host=      $FG[002]	    # the host name
fg_oA=        $FG[117]	    # the current path
fg_lineStart1=$FG[004]	    # the first bold at the start of the line
fg_lineStart2=$FG[002]	    # the second bold at the start of the line
fg_lineStart3=$FG[117]	    # the third bold at the start of the line
fg_lgray=     $FG[004]	    # the colour of the ip adress

#Load all plugins and extern sources
source ~/.doto_src/enhancd/init.sh
#eval "$(fasd --init auto)"
source ~/.zgen/zgen.zsh     # your local zgen installation
source ~/.bazsh/plugins.zsh # list of all loaded and available plugins
source ~/.bazsh/git-prompt.zsh
load_plugins                     # call the function to load all plugins

# set zsh configurations to my favorite behavior
# # zgen selfupdate
# # setopt correctall
setopt auto_resume
setopt autocd
setopt chase_links	 # resolve symlinks
setopt completeinword
setopt extendedglob
setopt interactivecomments
unsetopt caseglob
setopt PROMPT_SUBST
setopt APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt NO_HIST_BEEP
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS

#adjust colours for the theme
export ZLS_COLORS=$LS_COLORS



# bindkey "^[[A" history-search-backward
# bindkey "^[[B" history-search-forward
cFg="2;38;5;"
# %d	actual text
infoBg=$BG[234];	infoFg=$FG[244];
errBg=$BG[052];		errFg=$FG[160]
zstyle ':completion:::::' completer _complete _approximate
zstyle ':completion:*:approximate:*' max-errors 2

zstyle ':completion:*' format "${infoBg}${infoFg}- [%d]${reset_color}"
# ':completion:function:completer:command:argument:tag'
zstyle ':completion:*' auto-description "$FG[240]specify: %d"
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' group-name ''
# # zstyle ':completion:*' list-colors ''
# zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
#Autocompletion Path
zstyle -e ':completion:*:default' list-colors 'reply=("${PREFIX:+=(#bi)($PREFIX:t)(*)=='${cFg}${cGrn}'='$cFg'117}:${(s.:.)LS_COLORS}")';
zstyle ':completion:*:aliases' list-colors '=*='$cFg'072'
zstyle ':completion:*:options' list-colors '=(-- *)='$cFg'004'
# zstyle ':completion:*:options' list-colors '=^(-- *)=34'

# zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-prompt "${infoBg}%SAt %p: TAB for more, or the character to insert%s${reset_color}"
# # zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
# zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select=2 eval "$(dircolors -b)"
# zstyle ':completion:*' menu select=2 "{infoBg}${infoFg}"
# # zstyle ':completion:*' menu select=long
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
# zstyle ':completion:*' "select-prompt %SScrolling active: current selection at %p%s"
zstyle ':completion:*' "select-prompt %SScroll %p%s"
# zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
# zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
zstyle ':completion:*:killall:*' command 'ps -u $USER -o cmd'
zstyle ':completion:*:descriptions' format "$FG[094]xxxxxxxx%U%B%d%b%u"
zstyle ':completion:*:messages' format '%B%U---- %d%u%bxxxxxxxx'
zstyle ':completion:*:warnings' format "${errBg}${errFg}%BNo matches for:${reset_color} $FG[052]%d%b${reset_color}"

zstyle ':filter-select:highlight' matched fg=${cGrn}
zstyle ':filter-select:highlight' selected fg=black,bg=${cGrn}
zstyle ':filter-select:highlight' title fg=red
zstyle ':filter-select:highlight' marked fg=red
zstyle ':filter-select' case-insensitive yes
zstyle ':filter-select' extended-search yes
zstyle ':filter-select' rotate-list yes

fpath=(/home/vulder/.zgen/http:/git.code.sf.net/p/zsh/code-master/Completion/Linux/Command $fpath)
bindkey '^R' zaw-history
bindkey '^Q' zaw

HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='bg=cyan,fg=white'
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND='bg=red,fg=white,bold'
for i in brackets main pattern ; do	# line root
	if [[ " ${ZSH_HIGHLIGHT_HIGHLIGHTERS[*]} " != *" $i "* ]]; then ZSH_HIGHLIGHT_HIGHLIGHTERS+=( $i ); fi
done

echo $plugins
ZSH_HIGHLIGHT_PATTERNS+=('ls -rf *' 'fg=white,bold,bg=red')
ZSH_HIGHLIGHT_STYLES[alias]="fg=072"
ZSH_HIGHLIGHT_STYLES[assign]="fg=yellow,bold"
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=009
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
ZSH_HIGHLIGHT_STYLES[builtin]=fg=white,bold
ZSH_HIGHLIGHT_STYLES[command]=fg=white,bold
ZSH_HIGHLIGHT_STYLES[commandseparator]=none
ZSH_HIGHLIGHT_STYLES[default]=none
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=magenta
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=none
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=magenta,bold
ZSH_HIGHLIGHT_STYLES[function]=fg=green,bold
ZSH_HIGHLIGHT_STYLES[globbing]=fg=magenta,bold
ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=009
ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=white,underline
ZSH_HIGHLIGHT_STYLES[path]=fg=129
ZSH_HIGHLIGHT_STYLES[precommand]=fg=white,underline
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=009,standout
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=none
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=005
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=009
ZSH_HIGHLIGHT_STYLES[path_prefix]=fg=cyan
ZSH_HIGHLIGHT_STYLES[path_approx]=fg=cyan
ZSH_HIGHLIGHT_STYLES[cursor-matchingbracket]="fg=160,bg=052"
ZSH_HIGHLIGHT_STYLES[bracket-error]='fg=red,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-1]='fg=blue,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-2]='fg=red,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-3]='fg=yellow,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-4]='fg=magenta,bold'

. ~/.doto_src/autojump/bin/autojump.zsh

alias zNoflwLink="unsetopt chaselinks"

#HISTFILE=/root/.zsh-histfile
HISTFILE=$HOME/.zsh-histfile
HISTSIZE=5000
SAVEHIST=5000

#TODO: Hier Variablen festlegen

fg_error=$FG[196] # the error if a process not temrinated correctly
fg_user=$FG[004]	# the user name
fg_at=$FG[066] # the @ sign between user and host
fg_host=$FG[002]	# the host name
fg_oA=$FG[117]	# the current path
fg_lineStart1=$FG[004]		# the first bold at the start of the line
fg_lineStart2=$FG[002]		# the second bold at the start of the line
fg_lineStart3=$FG[117]		# the third bold at the start of the line
fg_lgray=$FG[004]	# the colour of the ip adress

# adjust the colour of the ip if you are on a ssh connection
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then fg_oA=$FG[213]; fi

# building the prompt with all the customized colours 
function prompt_char {
	if [ $UID -eq 0 ]; then echo "%{$fg[red]%}#%{$reset_color%}";
        else echo "%{$fg_lineStart1%}❯%{$fg_lineStart2%}❯%{$fg_lineStart3%}❯%{$reset_color%}"; fi
}
PROMPT='
%(?,,%{$fg_error%}⚡$? %{$reset_color%})%{$fg_user%}%n%{$fg_at%}@%{$fg_host%}%m%{$reset_color%}: %{$fg_oA%}%~%{$reset_color%}$(gitprompt)
$(prompt_char) '

# ip on the right site of the screen
function prompt_ip {
  ip address| grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1' | grep -v '172.17.0.1' | head -1
}
RPROMPT='%{$fg_lgray%}[$(prompt_ip)]%{$reset_color%}'

# ______________________________________________[zaw]
function zaw-src-fuzzy() {
	OLDIFS=$IFS
	IFS=$'\n'
	candidates=($(find .))
	candidates=(${(iou)candidates[@]})
	IFS=$OLDIFS
	unset OLDIFS
	# Define what kind of action can be performed on the selected item
	# first: accept-line
	# second: accept-search
	actions=("zaw-callback-execute" "zaw-callback-append-to-buffer")
	act_descriptions=("execute" "append to edit buffer")
}
zaw-register-src -n fuzzy zaw-src-fuzzy

function fuzzy-start { kill-line; zaw-fuzzy }
zle -N fuzzy-start
bindkey '^F' fuzzy-start
# ----------------------------
bindkey -M filterselect '^M' accept-search
# ______________________________________________

autoload -U compinit
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
unalias gg
export PATH="/usr/local/p/versions/python:$PATH"
if which ruby >/dev/null && which gem >/dev/null; then
    PATH="$(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi

