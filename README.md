Vundle version of plugin tree
=====

Intended for working with Python, PHP, Common Lisp and Haskell files.

More to be written.

Requirements
---
 * git
 * ctags-exuberant with patch. [Read more on ctags bug and get patch](http://dfrank.ru/ctags581?en).
 * Common Lisp interpreter (preferrably SBCL 1.1+) for slimv plugin. [Get SBCL](http://sbcl.org/platform-table.html).

Installlation
---

    cd ~
    git clone git://github.com/justthefish/vim-php-nerdtree.git .vim
    ln -s ~/.vim/.vimrc .vimrc
    cd .vim/
    git submodule update --init
    vim
    :BundleInstall

More to be written.

Known issues
---
 * Snippets yet not working as intended
 * Tab autocompletion has some bugs, work in progress

Last updated: Thu Feb 14 14:30:54 MSK 2013
