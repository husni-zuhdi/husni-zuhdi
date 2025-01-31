# Append this lines to your own .zshrc
# neovim
export PATH="$HOME/bin:$PATH"
export PATH="$PATH:/opt/nvim-linux64/bin"

# kubectl aliases
export KONF="$HOME/.kube"
export KUBE_EDITOR="nvim"
alias k="kubectl"
alias kg="kubectl get"
alias kd="kubectl describe"
alias kl="kubectl logs"
alias kev="kubectl events"
alias kedit="kubectl edit"
alias kssh="kubectl exec -it"
alias kgall="kubectl get -A"
alias kgp="kubectl get pod"
alias kgpa="kubectl get pod -A"
alias kgcx="kubectl config get-contexts -o name"
alias kucx="kubectl config use-context"
alias kdcx="kubectl config delete-context"
alias kcheck="kgpa | grep 'Crash\|Pending\|Error\|Init\|1/2\|s ago)'"
function kccx() {
    if [ $# -lt 2 ]
    then
        echo "Usage: kctx <client_name> <env_type>"
        echo "Example: kctx omeda dev"
    else
        kucx $(kgcx | grep $1 | grep $2)
    fi
}

# aws cli aliases
alias akl="aws eks list-clusters"
alias aku="aws eks update-kubeconfig"

# aws eks list functions
function aklus() {
  for region in us-east-1 us-east-2 us-west-1 us-west-2 ca-central-1 sa-east-1
  do
    echo "Region : $region"
    akl --region $region | jq '.clusters'
  done
}

function akleu() {
  for region in eu-central-1 eu-west-1 eu-west-2 eu-west-3 eu-north-1
  do
   echo "Region : $region"
   akl --region $region | jq '.clusters'
  done
}

function aklasia() {
  for region in ap-south-1 ap-northeast-1 ap-northeast-2 ap-northeast-3 ap-southeast-1 ap-southeast-2
  do
    echo "Region : $region"
    akl --region $region | jq '.clusters'
  done
}

# git aliases
alias gitcp="git checkout master && git pull"

# aws cli pager
export AWS_PAGER=""

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# goenv
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
echo 'eval "$(goenv init -)"'
echo 'export PATH="$GOROOT/bin:$PATH"'
echo 'export PATH="$PATH:$GOPATH/bin"'

# tfenv and tgenv
export PATH="$HOME/.tfenv/bin:$PATH"
export PATH="$HOME/.tgenv/bin:$PATH"
export TGENV_AUTO_INSTALL=true

# pip
export PATH="$HOME/.local/bin:$PATH"

# kustomize
export PATH="$HOME/kustomize:$PATH"

# Custom function
alias done="echo '✅ Task Finished'"

# Git Config
export GIT_EDITOR="nvim"

#Poetry Auto completion
# fpath+=~/.zfunc
# autoload -Uz compinit && compinit


# Terragrunt cache
export TF_PLUGIN_CACHE_DIR="$HOME/.terra-cache"

# Android Studio Home envar
export PATH=$PATH:$HOME/android-studio/bin
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Nodejs Version Manager envar
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
