# Advanced Aliases.
# Use with caution
#

# ssh for pkcs#11
alias ssh-add-pkcs11='ssh-add -s /usr/lib/x86_64-linux-gnu/opensc-pkcs11.so'

# git aliases
alias gsl='git commit --amend -S --no-edit'

# Disable correction.
alias ack='nocorrect ack'
alias cp='nocorrect cp'
alias ebuild='nocorrect ebuild'
alias gcc='nocorrect gcc'
alias gist='nocorrect gist'
alias grep='nocorrect grep'
alias heroku='nocorrect heroku'
alias ln='nocorrect ln'
alias man='nocorrect man'
alias mkdir='nocorrect mkdir'
alias mv='nocorrect mv'
alias mysql='nocorrect mysql'
alias rm='nocorrect rm'

# Disable globbing.
alias bower='noglob bower'
alias fc='noglob fc'
alias find='noglob find'
alias ftp='noglob ftp'
alias history='noglob history'
alias locate='noglob locate'
alias rake='noglob rake'
alias rsync='noglob rsync'
alias scp='noglob scp'
alias sftp='noglob sftp'

# Define general aliases.
alias cp="${aliases[cp]:-cp} -i"
alias ln="${aliases[ln]:-ln} -i"
alias mkdir="${aliases[mkdir]:-mkdir} -p"
alias mv="${aliases[mv]:-mv} -i"
alias rm="${aliases[rm]:-rm} -i"
alias vi='vim'

# Grep
export GREP_COLOR='37;45'           # BSD.
export GREP_COLORS="mt=$GREP_COLOR" # GNU.

alias grep="${aliases[grep]:-grep} --color=auto"

# File Download
if (( $+commands[curl] )); then
  alias get='curl --continue-at - --location --progress-bar --remote-name --remote-time'
elif (( $+commands[wget] )); then
  alias get='wget --continue --progress=bar --timestamping'
fi

# Resource Usage
alias df='df -kh'
alias du='du -kh'

# ls, from prezto
alias ls='exa'
alias l='exa -1a'                                 # Lists in one column, hidden files.
alias ll='exa -lb --git --time-style=long-iso'    # Lists in a list
alias lld='ll -DhHgma --color-scale'              # Lists human readable sizes, hidden files.
alias llt='ll --tree --level=2'                   # Lists in a tree
alias lltt='ll --tree'                            # Lists in a deep tree
alias lr='ll -R'                                  # Lists human readable sizes, recursively.
alias la='ll -hHgma --color-scale'                # Lists human readable sizes, hidden files.
alias lad='la --group-directories-first'          # Lists human readable sizes, hidden files.
alias lm='la | "$PAGER"'                          # Lists human readable sizes, hidden files through pager.
alias lx='ll -XB'                                 # Lists include extended attributes
alias lk='ll -s size'                             # Lists sorted by size, largest last.
alias lt='ll -s modified'                         # Lists sorted by date, most recent last.
alias lc='lt -U'                                  # Lists sorted by date, most recent last, shows created time.
alias lu='lt -u'                                  # Lists sorted by date, most recent last, shows access time.
alias sl='ls'                                     # I often screw this up.

alias gitkraken='gitkraken --disable-gpu'

# npm
alias npm-exec='PATH=$(npm bin):$PATH'

xo-project () {
  ag --js -l --ignore $(git config --file .gitmodules --get-regexp path | awk '{ print $2 }') | xargs xo
}

