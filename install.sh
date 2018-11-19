for f in .??*
do
    [ "$f" = ".git" ] && continue
    # ホームディレクトリのdotFiles配下を参照する設定
    ln -snfv "$HOME/dotFiles/$f" "$HOME/$f"
done

# zsh用カスタムテーマを使えるようにする設定
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"

ln -snfv "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# anyenvのインストール
git clone https://github.com/riywo/anyenv ~/.anyenv

## anyenv update plugin
mkdir -p $(anyenv root)/plugins
git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update

# シェル再起動
exec $SHELL -l
