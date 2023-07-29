# Append this lines to your own .zshrc
# neovim
export PATH="$HOME/bin:$PATH"

# kubectl aliases
export KONF="$HOME/.kube"
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

# tfenv and tgenv
export PATH="$HOME/.tfenv/bin:$PATH"
export PATH="$HOME/.tgenv/bin:$PATH"
