alias reload!='. ~/.zshrc'

alias cls='clear' # Good 'ol Clear Screen command
alias bu='brew update && brew upgrade --all && brew cleanup'
alias bb='brew update && brew bundle --global && brew upgrade && brew cleanup'
alias v='nvim'
alias gcr="ssh deploy@groove.realtime"
alias gcrc="gcr \"bash -l -c 'cd /data/groove/current && bundle exec rails c'\""
alias gcw1="ssh deploy@groove.worker1"
alias gcw1c="gcw1 \"bash -l -c 'cd /data/groove/current && bundle exec rails c'\""
alias gcw2="ssh deploy@groove.worker2"
alias gcw2c="gcw2 \"bash -l -c 'cd /data/groove/current && bundle exec rails c'\""
alias gcw3="ssh deploy@groove.worker3"
alias gcw3c="gcw3 \"bash -l -c 'cd /data/groove/current && bundle exec rails c'\""
alias gcw4="ssh deploy@groove.worker4"
alias gcw4c="gcw4 \"bash -l -c 'cd /data/groove/current && bundle exec rails c'\""
alias be="./bin/exec"
alias fsw="foreman start web"
alias gdp="ey deploy -e production_v3 -r origin/master"
alias gds="ey deploy -e staging_v3 -r "
alias run="./bin/run"
alias start="./bin/start"
alias stop="./bin/stop"

alias sdc="docker exec -it shadow $@"
alias sdcd="docker exec -it shadow shadowcoind $@"
