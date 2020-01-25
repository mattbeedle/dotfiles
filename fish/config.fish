alias reload!='. ~/.config/fish/config.fish'

alias cls='clear' # Good 'ol Clear Screen command
alias bu='brew update; and brew upgrade --all; and brew cleanup'
alias bb='brew update; and brew bundle --global; and brew upgrade; and brew cask upgrade; and brew cleanup'
alias v='nvim'
alias gcr="ssh deploy@groove.realtime"
alias gcrc="gcr \"bash -l -c 'cd /data/groove/current; and bundle exec rails c'\""
alias gcw1="ssh deploy@groove.worker1"
alias gcw1c="gcw1 \"bash -l -c 'cd /data/groove/current; and bundle exec rails c'\""
alias gcw2="ssh deploy@groove.worker2"
alias gcw2c="gcw2 \"bash -l -c 'cd /data/groove/current; and bundle exec rails c'\""
alias gcw3="ssh deploy@groove.worker3"
alias gcw3c="gcw3 \"bash -l -c 'cd /data/groove/current; and bundle exec rails c'\""
alias gcw4="ssh deploy@groove.worker4"
alias gcw4c="gcw4 \"bash -l -c 'cd /data/groove/current; and bundle exec rails c'\""
alias be="./bin/exec"
alias fsw="foreman start web"
alias gdp="ey deploy -e production_v3 -r origin/master"
alias gds="ey deploy -e staging_v3 -r "
alias run="./bin/run"
alias start="./bin/start"
alias stop="./bin/stop"
alias build="./bin/build"
alias restart="./bin/restart"
alias logs="./bin/logs"
alias ls="exa"
alias l="ls -lah"
alias preview="fzf --preview 'bat --color \"always\" {}'"
alias yd="youtube-dl"

export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort'"
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
#alias grep='rg'
alias man='tldr'
alias g='git'
alias cat='bat'

# Remove `+` and `-` from start of diff lines; just rely upon color.
alias gd='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'

alias gpf='git push origin HEAD -f'
alias gd='git diff'
alias gc='git commit -S'
alias gca='git commit -a'
alias gco='git checkout'
alias gcb='git copy-branch-name'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias gac='git add -A; and git commit -m'

alias git=hub

set -g theme_nerd_fonts yes
set -g theme_color_scheme gruvbox

[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish

set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

export EDITOR=nvim

eval (dinghy env)

set -x auto_tmux 0
