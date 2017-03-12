#
# .zshrc
#

# screen ¿¿¿¿¿¿¿
#if [ ! $TERM = "screen" -a -z "$YROOT_NAME" ]; then; screen -R; fi
#if [ -n $YROOT_NAME ]; then; builtin cd $HOME; fi

#---------------------------------
# set options
#---------------------------------
setopt extended_history         # ¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿
setopt hist_ignore_dups         # ¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿
setopt hist_ignore_all_dups     # ¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿
setopt hist_reduce_blanks       # ¿¿¿¿¿¿¿¿¿¿¿(¿¿¿¿¿¿¿¿¿¿)
setopt share_history            # ¿¿¿¿¿¿¿
setopt hist_no_store            # history¿¿¿¿¿¿¿¿¿¿
setopt hist_ignore_space        # ¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿(¿¿¿¿¿¿¿¿)

setopt list_packed              # ¿¿¿¿¿¿¿¿¿¿¿¿¿
setopt print_eight_bit          # ¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿
#setopt menu_complete           # 1¿¿¿TAB¿¿¿¿¿¿¿¿
setopt auto_menu                # 2¿¿¿TAB¿¿¿¿¿¿¿¿
#setopt auto_remove_slash       # ¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿
setopt no_clobber               # ¿¿¿¿¿¿¿¿¿¿¿¿
setopt no_unset                 # ¿¿¿¿¿¿¿¿¿¿¿
setopt no_hup                   # logout¿¿¿¿¿¿¿¿¿¿¿¿¿¿ kill ¿¿¿
setopt no_beep                  # ¿¿¿¿¿¿¿¿¿¿BEEP¿¿¿¿¿¿

setopt extended_glob            # ¿¿¿¿¿
setopt numeric_glob_sort        # ¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿
setopt auto_cd                  # ¿1¿¿¿¿¿¿¿¿¿¿¿ cd ¿¿¿
setopt autopushd                # cd¿¿¿¿¿¿pushd¿¿
setopt pushd_to_home            # ¿¿¿¿pushd¿$HOME¿¿¿(¿¿dir¿¿ cd - ¿)
setopt pushd_ignore_dups        # ¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿
#setopt pushd_silent            # pushd, popd ¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿
setopt correct                  # ¿¿¿¿¿¿¿
setopt no_checkjobs             # exit ¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿
setopt notify                   # ¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿
setopt ignore_eof              # C-d¿logout¿¿¿(C-d¿¿¿¿¿¿¿¿)
setopt interactive_comments     # ¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿
#setopt rm_star_silent          # rm * ¿¿¿¿¿¿¿¿¿¿¿¿¿
#setopt rm_star_wait            # rm * ¿¿¿ 10¿¿¿¿¿¿¿
#setopt chase_links             # ¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿
setopt sh_word_split            # ¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿
setopt cdable_vars              # ¿¿¿~¿¿¿¿¿¿¿¿¿¿¿¿~¿¿¿¿¿
setopt auto_param_keys          # ¿¿¿¿¿¿
#setopt list_types              # ¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿(default)
#setopt always_last_prompt      # ¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿(dafault)

setopt promptcr                 # ¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿
setopt prompt_subst             # ¿¿¿¿¿¿¿¿¿¿¿¿

limit   coredumpsize    0       # ¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿


#---------------------------------
# devicemap & bindkey
#---------------------------------
stty    erase   '^H'
stty    erase   '^?'
stty    intr    '^C'
stty    susp    '^Z'
bindkey -e    # emacs mode ¿¿¿¿¿¿

# tcsh¿¿¿¿¿¿¿¿¿¿¿¿¿¿(¿¿¿¿¿¿¿)
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

# ¿¿¿¿¿¿¿¿¿
#bindkey '^F' forward-word
#bindkey '^B' backward-word

# ¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿
export WORDCHARS='*?_.[~=&;!#$%^({<'

bindkey "^?" backward-delete-char

#---------------------------------
# history
#---------------------------------
HISTFILE="$HOME/.zhistory.$HOST" # ¿¿¿¿¿¿
HISTSIZE=10000                  # ¿¿¿¿¿¿¿¿¿¿ $HISTFILE ¿¿¿¿¿¿¿
SAVEHIST=10000                  # ¿¿¿¿¿¿¿¿¿¿


#---------------------------------
# completion
#---------------------------------
autoload -U compinit; compinit -u

# ¿¿¿¿¿¿¿¿¿ ~/.ssh/known_hosts ¿¿¿¿¿¿¿¿¿¿
if [ -e ~/.ssh/known_hosts ]; then
        _cache_hosts=(`perl -ne 'if (/^([a-zA-Z0-9.-]+)/) { print "$1\n";}' ~/.ssh/known_hosts`);
fi

#zstyle ':completion:*' use-compctl false # compctl¿¿¿¿¿¿¿¿

# ¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿ cdpath ¿¿¿¿¿¿¿¿¿¿¿
#zstyle ':completion:*:cd:*' tag-order local-directories path-directories
# cf. zstyle ':completion:*:path-directories' hidden true
# cf. cdpath ¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿¿

# ¿¿¿¿¿¿¿¿¿¿¿¿¿¿
#zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# ¿¿¿¿¿¿¿¿¿(¿¿¿¿¿¿¿¿¿) ## ¿¿¿¿¿¿¿¿¿¿¿¿¿¿
#autoload -U predict-on
#zle -N predict-on
#zle -N predict-off
#bindkey '^Xp' predict-on    # [C-x p] ¿¿¿¿
#bindkey '^X^p' predict-off  # [C-x C-p] ¿¿¿¿
#predict-on

#---------------------------------
# prompt
#---------------------------------
C00=$'%{\e[00m%}' # ¿¿¿¿
CFK=$'%{\e[0;30m%}' # ¿¿¿ - ¿
CFR=$'%{\e[0;31m%}' # ¿¿¿ - ¿
CFG=$'%{\e[0;32m%}' # ¿¿¿ - ¿
CFY=$'%{\e[0;33m%}' # ¿¿¿ - ¿
CFB=$'%{\e[0;34m%}' # ¿¿¿ - ¿
CFM=$'%{\e[0;35m%}' # ¿¿¿ - ¿
CFC=$'%{\e[0;36m%}' # ¿¿¿ - ¿
CFW=$'%{\e[0;37m%}' # ¿¿¿ - ¿
CBK=$'%{\e[40m%}' # ¿¿¿ - ¿
CBR=$'%{\e[41m%}' # ¿¿¿ - ¿
CBG=$'%{\e[42m%}' # ¿¿¿ - ¿
CBY=$'%{\e[43m%}' # ¿¿¿ - ¿
CBB=$'%{\e[44m%}' # ¿¿¿ - ¿
CBM=$'%{\e[45m%}' # ¿¿¿ - ¿
CBC=$'%{\e[46m%}' # ¿¿¿ - ¿
CBW=$'%{\e[47m%}' # ¿¿¿ - ¿
CTB=$'%{\e[01m%}' # ¿¿ - ¿¿
CTU=$'%{\e[04m%}' # ¿¿ - ¿¿
CTL=$'%{\e[05m%}' # ¿¿ - ¿¿
CTI=$'%{\e[07m%}' # ¿¿ - ¿¿

# ¿¿¿¿¿¿
RPS1=$'${CFW}[%(8~,%-2~/.../%5~,%~)]${C00}'
# ¿¿¿¿¿¿
export TITLE="-"
export PSHOST=`hostname|sed "s/mbga/${CFB}mbga${CFG}/"|sed "s/mixi/${CFY}mixi${CFG}/"`
PS1=$'%{\e]2;%M: $TITLE\a'$'\e]1;%M: $TITLE\a%}'$'${CFG}${PSHOST}${CTB}[${WINDOW:+"${CFG}$WINDOW${CTB}:"}${CFG}%!${CTB}]%(?..[${CFR}%?${CFG}${CTB}])>${C00} '


#---------------------------------
# other autoloads
#---------------------------------

# build-in ¿¿¿¿¿¿¿¿
[ -n "`alias run-help`" ] && unalias run-help
autoload run-help

# ¿¿¿mv
autoload -U zmv
alias mmv='noglob zmv -W'


#---------------------------------
# alias
#---------------------------------

# for fileutils (required yinst-ports/fileutils)
alias ls="ls -CF --color=auto --show-control-char"
alias ll="ls -alF --color=auto --show-control-char"
alias rm 'rm -i'
alias del 'rm -rf *~ .*~'
alias cp='cp -iv'

# other command
alias help="run-help" # builtin command help
alias make="make -j1"
#alias make="make -j3"
alias psa='ps auxww'
alias bell="echo '\a'"
alias scr="screen -R"
alias vi="/usr/bin/nvim"



