#!/bin/bash
for file in $(find . -maxdepth 1 -name ".*" -type f  -printf "%f\n" ); do
    if [ -e ~/$file ]; then
        mv -f ~/$file{,.dtbak}
    fi
    ln -s $PWD/$file ~/$file
done
 if hash vim-addon  2>/dev/null; then
         echo "vim-addon (vim-scripts)  installed"
     else
         echo "vim-addon (vim-scripts) not installed, running 'sudo dnf install bc'"
         sudo dnf install vim-scripts
fi

echo "Installed"
