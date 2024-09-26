#!/bin/bash

DOTFILES_DIR="$HOME/dotfiles/dots"

echo "シンボリックリンクを作成しています..."

# dotfilesディレクトリ内の隠しファイルに対してループ
for file in "$DOTFILES_DIR"/.[^.]*; do
    # ホームディレクトリ直下に作成するパスを計算
    link_name="$HOME/${file#"$DOTFILES_DIR"/}"

    # シンボリックリンクを作成
    if ln -sfn "$file" "$link_name"; then
        echo "リンクを作成しました: $file -> $link_name"
    else
        echo "リンク作成に失敗しました: $file" >&2
    fi
done

# fishディレクトリ用のリンク作成
# if [ ! -d "$HOME/.config" ]; then
#     mkdir -p "$HOME/.config"
# fi
# ln -sfn "$DOTFILES_DIR/fish" "$HOME/.config"

echo "ホームディレクトリにシンボリックリンクが作成されました。"