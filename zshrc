ZSH=$HOME/.oh-my-zsh
ZSH_THEME="rbates"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="true"

plugins=( bundler brew gem rbates)

export PATH="/usr/local/bin:$PATH"
export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

source $ZSH/oh-my-zsh.sh

# Aliases
alias ss="subl . &"
alias sbl="subl"
alias ez="vim ~/.zshrc"
# Git
alias ga="git add -A . && git status -sb"
alias gcm="git commit -m"
alias gs="git status -sb"
alias gp="git push"
alias gnb="git checkout -b"
alias gkm="git checkout master"
alias gk="git checkout"
# Ruby
alias bi="bundle install"
 
# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"


export MARKPATH=$HOME/.marks
function z {
    cd -P $MARKPATH/$1 2>/dev/null || echo "No such mark: $1"
}
function mark {
    mkdir -p $MARKPATH; ln -s $(pwd) $MARKPATH/$1
}
function unmark {
    rm -i $MARKPATH/$1
}
function marks {
    ls -l $MARKPATH | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/\t-/g' && echo
}
