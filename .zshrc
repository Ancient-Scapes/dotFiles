# PATHの設定
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/bin:$PATH"
export ZSH=/Users/$USER/.oh-my-zsh

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

## zsh-completions:zshの補完を最強にするやつ
plugins=(
  git zsh-syntax-highlighting zsh-completions
)

# コマンド補完の設定
autoload -U compinit && compinit -u

# イケてるテーマを設定
autoload -U promptinit; promptinit
prompt pure

# gitignore.io用のコマンド
function gi() { curl -L -s -k https://www.gitignore.io/api/$@ ;}

# alias
## SSH
alias sshk='ssh-keygen -t rsa'
alias vsc='vi ~/.ssh/config'
 
## git
alias gs='git status --short'
# masterをpull系
alias gpom='git pull origin master'
alias gpod='git pull origin develop'
### add
alias ga='git add'
alias gaa='git add ./'
### ファイルの行ごとにきれいなコミットする時に使うやつ
alias gap='git add -p'
alias gc-b='git checkout -b'
## stash
alias gsu='git stash save -u'
alias gsa='git stash apply'

### 差分系
alias gd='git diff'
alias gdc='git diff --cached'
### コミット系
alias gcm='git commit -m'
alias gcmtypo='git commit -m "fix:typo"'
alias gcmconf='git commit -m "fix: [merge] masterをマージし、コンフリクト解決しました"'
### 直前のコミット取り消し
alias grsh='git reset --soft HEAD^'
alias gp='git push'
alias grso='git remote set-url origin'
### 新しく作ったブランチをpushする時に使うやつ(git push new branchの略)
alias gpnb='git push --set-upstream origin `git rev-parse --abbrev-ref HEAD`'

## zsh
alias sz='source ~/.zshrc'
alias vz='vi ~/.zshrc'

## ndenv
alias ndi='ndenv install'
alias ndg='ndenv global'

# gerrit作業用

## 最新版取得
alias kpull='git pull --rebase origin master'

## 再コミット
alias gcam='git commit --amend'

## push
alias kpush='git push origin HEAD:refs/for/master'

## conflict pull
alias kconfpull='git fetch origin/master && git rebase master'

## conflict push
alias kconfpush='git rebase --continue && git push origin HEAD:refs/for/master'

alias l='ls -la'

## debug pr branch
function bd () { git stash save -u "some files when checkout $@ branch" && git fetch && git checkout $@ && git pull && yarn dev  }
