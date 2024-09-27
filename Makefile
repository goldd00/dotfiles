# 初期実行
init:
	@echo "\033[0;34mRun init.sh\033[0m"
	@.bin/init.sh
	@echo "\033[0;34mDone.\033[0m"
# シンボリックリンク作成
link:
	@echo "\033[0;34mRun setup_symlink.sh\033[0m"
	@.bin/setup_symlinks.sh
	@echo "\033[0;32mDone.\033[0m"
# osx設定
defaults:
	@echo "\033[0;34mRun setup_defaults.sh\033[0m"
	@.bin/setup_defaults.sh
	@echo "\033[0;32mDone.\033[0m"
# brew bundle
init_brew:
	@echo "\033[0;34mRun setup_brew.sh\033[0m"
	@.bin/setup_brew.sh
	@echo "\033[0;32mDone.\033[0m"
init_fish:
	@echo "\033[0;34mRun setup_fish.sh\033[0m"
	@.bin/setup_fish.sh
	@echo "\033[0;32mDone.\033[0m"
