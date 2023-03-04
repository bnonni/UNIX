export CLICOLOR=1
# --------------------------- env_exports --------------------------- #
export PWD=`pwd`
export SCRIPTS="$PWD/UNIX/env/bin"
export SHELLRC="$HOME/.profile"
export PATH="$PATH:$SCRIPTS"

# ----------------------------------- git_aliases ----------------------------------- #
alias g="git"

# ---- clone ---- #
alias clone="g clone $1"

# ---- status ---- #
alias s="g status"
alias status="g status"

# ---- add ---- #
alias a="g add"
alias a-p="g add -p"
alias a-A="g add -A"
alias add="g add"
alias add-p="g add -p"
alias add-A="g add -A"

# ---- commit ---- #
alias c="g commit -m 'committing changes'"
alias c-m="g commit -m $1"
alias commit="g commit -m 'committing changes'"
alias commit-m="g commit -m $1"

# ---- branch ---- #
alias b="g branch"
alias branch="b"
alias b-r="g branch -r"
alias branch-r="b-r"
alias b-m="g branch -m $1"
alias branch-m="b-m"
alias b-mch="g branch -m $1 $2"
alias branch-mch="b-mc $1 $2"
alias b-d="g branch -d $1"
alias branch-d="b-d $1"
alias b-D="g branch -D $1"
alias branch-D="b-D $1"
alias cb="b | grep '*' | sed 's/* //g'"
alias curb="b | grep '*' | sed 's/* //g'"
alias currentb="b | grep '*' | sed 's/* //g'"
alias findb="b | grep $1"

# ---- checkout ---- #
alias chom="g checkout master"
alias cho="g checkout $1"
alias cho--="g checkout -- ."
alias cho--f="g checkout -- $1"
alias cho-b="g checkout -b $1"
alias cho-findb="g checkout findb $1"

# ---- pull ---- #
alias pu="g pull"
alias pull="g pull"
alias puo="pu origin $1"
alias pullo="pu origin $1"
alias puom="pu origin master"
alias pullom="pu origin master"
alias pup="pu upstream $1"
alias pupm="pu upstream master"


# ---- fetch ---- #
alias f="g fetch"
alias f-p="g fetch -p"
alias f--prune="g fetch --prune"
alias fup="g fetch upstream"
alias fetch="g fetch"
alias fetch-p="g fetch -p"
alias fetch--prune="g fetch --prune"
alias fetchup="g fetch upstream"


# ---- rebase ---- #
alias re="g rebase $1"
alias reup="g rebase upstream/$1"
alias reupm="g rebase upstream/master"
alias reupmaster="g rebase upstream/master"
alias reupmain="g rebase upstream/main"

# ---- push ---- #
alias p="g push"
# alias po="g push origin $1"
alias p-u="g push -u origin $1"
alias push="g push"
alias push-u="g push -u origin $1"

# ---- stash ---- #
alias st="g stash"
alias stash="g stash"
alias stpop="g stash pop"
alias pop="g stash pop"

# ---- diff ---- #
alias d="g diff"
alias d-file="d $1"
alias diff="d"
alias diff-file="d $1"

# ---- g status ---- #
alias gs="g status"
alias gstatus="g status"

# ---- g add ---- #
alias ga="g add"
alias gadd="g add"
alias ga-p="g add -p"
alias ga-A="g add -A"
alias gadd-p="g add -p"
alias gadd-A="g add -A"

# ---- g commit ---- #
alias gc="g commit -m 'committing changes'"
alias gc-m="g commit -m $1"
alias gcommit="g commit -m $1"

# ---- g branch ---- #
alias gb="g branch"
alias gb-r="g branch -r"
alias gcb="b | grep '*' | sed 's/* //g'"
alias gcurb="b | grep '*' | sed 's/* //g'"
alias gcurrentb="b | grep '*' | sed 's/* //g'"

# ---- g push ---- #
alias gp="g push"
alias gp-u="g push -u origin $1"
alias gpush="g push"
alias gpush-u="g push -u origin $1"

# ---- g checkout ---- #
alias gchom="g checkout master"
alias gcho="g checkout $1"
alias gcho--="g checkout -- ."
alias gcho--f="g checkout -- $1"
alias gcho-b="g checkout -b $1"

# ---- g pull ---- #
alias gpu="g pull"
alias gpuo="g pull origin $1"
alias gpull="g pull"
alias gpullo="g pull origin $1"
alias gpum="g pull origin master"
alias gpullm="g pull origin master"

# ---- g stash ---- #
alias gst="g stash"
alias gstsh="g stash"
alias gstash="g stash"
alias gstpop="g stash pop"
alias gpop="g stash pop"

# ---- g diff ---- #
alias gd="g diff"
alias gdiff="g diff"
alias gdf="d $1"
alias gdifff="g diff $1"

# ----------------------------------- common_aliases ----------------------------------- #
alias l="ls -Flask"
alias ll="ls -Flask"
alias grep="grep --color"
alias downloads="cd $HOME/Downloads"
alias backlab="nohup jupyter lab --allow-root > $HOME/Local/var/logs/jupyter/jupyter.log &"
alias cpwd="pwd | pbcopy"
alias gohome="cd $HOME"
alias home="cd $HOME"
alias greph="history | grep $1"
alias pwn="sudo chown -R `whoami`:admin $1"
alias findps="ps aux | grep -v 'grep' | grep $1"
alias psklast="kill $!; echo '$! Done'"
alias lastps="echo $!"
alias grepll="ll | grep $1"
alias grepsh="cat $SHELLRC | grep $1"
alias grepz="cat $SHELLRC | grep $1"
alias catsh="cat $SHELLRC"
alias catz="cat $SHELLRC"
alias codesh="code $SHELLRC"
alias codez="code $SHELLRC"
alias srcsh=". $SHELLRC"
alias srcz=". $SHELLRC"
alias editsh="nano $SHELLRC"
alias editz="nano $SHELLRC"

# ---------------------------bin_command_aliases------------------------------- #
alias acpmaster="$SCRIPTS/acpmaster"
alias addalias="$SCRIPTS/addalias"
alias acpdev="$SCRIPTS/acpdev"
alias dircreate="$SCRIPTS/folder_creator"
alias pskall="$SCRIPTS/pskall"
alias flush="$SCRIPTS/flush"
alias destroy="$SCRIPTS/destroy"
alias acp="$SCRIPTS/acp"
alias vs-ext-remove="$SCRIPTS/vscode_uninstall"
alias usage="clear; $SCRIPTS/usage"
alias aliasz="$SCRIPTS/alias"
alias appendz="$SCRIPTS/append"
alias brew-tools="$SCRIPTS/brew-tools"
alias scrape="$SCRIPTS/web_scraper_args"
alias pythonserver="python3 -m http.server"