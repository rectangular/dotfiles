#!/bin/sh

echo "Installing dotfiles..."

# Find correct directory
if [ -d ~/.dotfiles ]; then
	d=~/.dotfiles
	echo "Found .dotfiles"
elif [ -d ~/Dropbox/code/dotfiles ]; then
	d=~/Dropbox/code/dotfiles
	echo "Found Dropbox dotfiles"
fi

# Move to correct directory
cd $d

# Create symlinks
for f in .???*; do
	rm -f ~/$f

    # Ignore .git
    if [ "$f" == ".git" ]; then
        continue
    fi

    # Ignore .gitignore file
    if [ "$f" == ".gitignore" ]; then
        continue
    fi

	(cd ~/; ln -s $d/$f $f)
    echo "Creating symlink $d/$f -> ~/$f"
done

echo "Installing Vundle"

if [[ ! -d ~/.vim/bundle/Vundle.vim ]]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
else
    echo "Vundle install already found"
fi

echo "Installing vim plugins"

vim +PluginInstall +qall

echo "Done!"
