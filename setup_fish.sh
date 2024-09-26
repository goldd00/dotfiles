#!/bin/bash

# 追加したいシェルのパス
SHELL_PATH="/opt/homebrew/bin/fish"

# /etc/shellsにパスが存在するか確認
if grep -Fxq "$SHELL_PATH" /etc/shells; then
    echo "$SHELL_PATH は既に /etc/shells に存在します。"
else
    # パスを /etc/shells の末尾に追加
    echo "$SHELL_PATH" | sudo tee -a /etc/shells
    echo "$SHELL_PATH を /etc/shells に追加しました。"
fi

if [[ "$SHELL" != "$SHELL_PATH" ]]; then
    chsh -s "$SHELL_PATH"
    echo "デフォルトシェルを $SHELL_PATH に変更しました。"
else
    echo "既にデフォルトシェルが $SHELL_PATH です。"
fi