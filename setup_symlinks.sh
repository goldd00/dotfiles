#!/bin/bash

DOTFILES_DIR=~/dotfiles
EXCLUDE_PREFIX="_"

echo "Creating symbolic links..."

for file in "$DOTFILES_DIR"/*/.[^.]*; do
    base_dir=$(basename "$(dirname "$file")")

    if [[ $base_dir == $EXCLUDE_PREFIX* ]]; then
	echo "Skipping excluded directory: $base_dir"
        continue
    fi

    link_name=~/${file#"$DOTFILES_DIR"/*/}

    ln -sfn "$file" "$link_name"

    echo "Link created: $file -> $link_name"
done

echo "Symbolic links created in the home directory."
