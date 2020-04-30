for f in .??*
do
    [ "$f" = ".git" ] && continue
    # ホームディレクトリのdotFiles配下を参照する設定
    ln -snfv "$HOME/dotFiles/$f" "$HOME/$f"
done

# theme
npm install -g pure-prompt

# シェル再起動
exec $SHELL -l
