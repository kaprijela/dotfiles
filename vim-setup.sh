#!/usr/bin/env bash
AUTOLOAD_FOLDER=~/.vim/autoload
PLUGIN_FOLDER=~/.vim/bundle
PLUGINS=(
	"vim-airline",
	"vim-airline-themes",
	"vim-gitgutter",
	"vim-indent-guides",
	"tabular",
	"palenight"
)

# create folders if not present
mkdir -p $PLUGIN_FOLDER $AUTOLOAD_FOLDER

# set up pathogen
if [ !-e ${AUTOLOAD_FOLDER}/pathogen.vim ] then
	curl -LSso ${AUTOLOAD_FOLDER}/pathogen.vim "https://tpo.pe/pathogen.vim"
fi

# set up plugins
cd $PLUGIN_FOLDER
for PLUGIN in ${PLUGINS[@]}; do
	if [ !-e ${PLUGIN_FOLDER}/${PLUGIN} ] then
		if [ $PLUGIN = "vim-airline" ] then
			git clone "https://github.com/vim-airline/vim-airline"
		elif [ $PLUGIN = "vim-airline-themes" ] then
			git clone "https://github.com/vim-airline/vim-airline-themes"
		elif [ $PLUGIN = "vim-gitgutter" ] then
			git clone "https://github.com/airblade/vim-gitgutter"
		elif [ $PLUGIN = "vim-indent-guides" ] then
			git clone "https://github.com/valloric/vim-indent-guides"
		elif [ $PLUGIN = "tabular" ] then
			git clone "https://github.com/godlygeek/tabular"
		elif [ $PLUGIN = "palenight" ]
			git clone "git clone https://github.com/drewtempelmeyer/palenight.vim"
		fi
	fi
done
