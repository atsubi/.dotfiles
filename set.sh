#!/bin/sh
# 本プログラムを実行したことによる責任は負えかねます．
# 事前に以下のソフトが入っていることが前提です．
#  * - emacs( required )
#  * - vim( required )
#  * - tmux( なくてもよい )
#  * - zsh( なくてもよい )

emacs_config_dir=~/.emacs.d

echo "あなたの環境を僕用ドットファイルに変更します"
echo -n "よろしいですか？[Y/n]"
read ans
ans=`echo "$ans" | tr y Y | tr -d '[\[\]]'`

case "$ans" in
    "Y" )
	if [ -e $emacs_config_dir ]; then
	    rm -r $emacs_config_dir
	fi
	ln -s ~/.dotfiles/_emacs.d ~/.emacs.d
	ln -s ~/.dotfiles/_vimrc ~/.vimrc
	
	if [ -x /bin/zsh ]; then
	    ln -s ~/.dotfiles/_zshrc ~/.zshrc
	fi

	if [ -x /bin/tmux ]; then
	    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	    ln -s ~/.dotfiles/_tmux.conf ~/.tmux.conf
	fi
	echo "おわた" ;;
    "*" ) echo "中断する" ;;
esac
