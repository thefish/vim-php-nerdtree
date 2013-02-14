Vundle version of plugin tree
=====

Intended for working with Python, PHP, Common Lisp and Haskell files.

More to be written.

Requirements
---
 * ctags-exhuberant with patch [read more on ctags bug and get patch](http://dfrank.ru/ctags581?en)
 * lisp interpreter (preferrably SBCL 1.0+) for Lisp editing

Installlation
---

    cd ~
    git clone git://github.com/justthefish/vim-php-nerdtree.git .vim
    ln -s ~/.vim/.vimrc .
    cd .vim/
    git submodule update --init
    vi
    :BundleInstall

More to be written.

Known issues
---
 * Snippets yet not working as intended
 * Tab autocompletion has some bugs, work in progress

Last updated: Thu Feb 14 14:30:54 MSK 2013
