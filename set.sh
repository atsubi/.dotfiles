#!/bin/sh
# 本プログラムを実行したことによる責任は負えかねます．
# 事前に以下のソフトが入っていることが前提です．
#  * - emacs
#  * - vim
#  * - tmux
#  * - zsh

echo "あなたの環境を僕用ドットファイルに変更します"
echo -n "よろしいですか？[Y/n]"
read ans
ans=`echo "$ans" | tr y Y | tr -d '[\[\]]'`


case "$ans" in
	"Y" )
		ln -s ~/.dotfiles/_emacs.d ~/.emacs.d
		ln -s ~/.dotfiles/_zshrc ~/.zshrc
		ln -s ~/.dotfiles/_vimrc ~/.vimrc

		git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
		ln -s ~/.dotfiles/_tmux.conf ~/.tmux.conf
		echo "おわた" ;;
	"*" ) echo "中断する" ;;
esac

		



