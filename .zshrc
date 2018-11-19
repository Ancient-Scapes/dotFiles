# PATHの設定
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/bin:$PATH"
export ZSH=/Users/$USER/.oh-my-zsh

# イケてるテーマを設定
ZSH_THEME="spaceship"

# pluginの設定
## zsh-syntax-hilighting:シンタックスハイライトの設定
## zsh-completions:zshの補完を最強にするやつ
plugins=(
  git zsh-syntax-highlighting zsh-completions
)

# コマンド補完の設定
autoload -U compinit && compinit -u
# 呪文
source $ZSH/oh-my-zsh.sh

# nvm用の設定
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# gitignore.io用のコマンド
function gi() { curl -L -s -k https://www.gitignore.io/api/$@ ;}

# alias
## SSH
alias sshk='ssh-keygen -t rsa'
alias vsc='vi ~/.ssh/config'
 
## Node
alias n='node index.js'

### npm
alias ni='npm install'
alias nu='npm uninstall'
alias nr='npm run'

### yarn
alias ya='yarn add'
alias yr='yarn remove'
alias yi='yarn install'

## git
alias gs='git status'
alias gaa='git add'
alias gc-b='git checkout -b'
alias gc-m='git commit -m'
alias gp='git push'
alias grso='git remote set-url origin'

## zsh
alias sz='source ~/.zshrc'
alias vz='vi ~/.zshrc'
