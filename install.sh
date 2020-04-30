for f in .??*
do
    [ "$f" = ".git" ] && continue
    # ホームディレクトリのdotFiles配下を参照する設定
    ln -snfv "$HOME/dotFiles/$f" "$HOME/$f"
done

## theme
npm install -g pure-prompt

## nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | zsh

## シェル再起動
exec $SHELL -l
