# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# The rest of my fun git aliases
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gcb='git copy-branch-name'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias grm="git status | grep deleted | awk '{\$1=\$2=\"\"; print \$0}' | \
           perl -pe 's/^[ \t]*//' | sed 's/ /\\\\ /g' | xargs git rm"
alias gpa="git push origin $1 && git push gh $1 && git push gl $1" # Push GitLab to GitLab dev server, GitHub and GitLab Cloud
alias gpd="git push origin master && git push deploy master"

# moods

## work moods
alias gmw="git config --add user.email kenny@gitlab.com; git config--get user.email"
alias gmwn="git config --add user.email kenny+night@gitlab.com; git config--get user.email"
alias gmww="git config --add user.email kenny+weekend@gitlab.com; git config--get user.email"

## play moods
alias gmp="git config --add user.email kencjohnston@gmail.com; git config--get user.email"
alias gmph="git config --add user.email kencjohnston+happy@gmail.com; git config--get user.email"
