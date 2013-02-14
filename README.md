#Vundle version of plugin tree

Intended for working with Python, PHP, Common Lisp and Haskell files.

More to be written.

##Requirements
 * git
 * ctags-exuberant with patch. [Read more on ctags bug and get patch](http://dfrank.ru/ctags581?en).
 * Common Lisp interpreter (preferrably SBCL 1.1+) for slimv plugin. [Get SBCL](http://sbcl.org/platform-table.html).
 * xclip if you have vim compiled without system clipboard support

##Installlation


    cd ~
    git clone git://github.com/justthefish/vim-php-nerdtree.git .vim
    ln -s ~/.vim/.vimrc .vimrc
    cd .vim/
    git submodule update --init
    vim
    :BundleInstall

###Indexer setup

    vim ~/.indexer_files

then add some entries to file, similar to following template.

    [python-project]
    option:ctags_params = " --languages=python" 
    /home/user/path/to/python/project

    [php-project]
    option:ctags_params = " --languages=php" 
    /home/user/path/to/php/project


Next time you run vim in your project folder, :IndexerRebuild will be called,
so you will have "go to definition" and autocomplete on Tab out of the box.

For further information [read Indexer docs](http://www.vim.org/scripts/script.php?script_id=3221).

###Ubuntu system clipboard interaction
Next feature i added is copy and paste from system buffer (browser etc).
Since i am using console Vim, i use xclip to exchange the bufffer with
desktop environment.

    sudo apt-get install xclip

Now you can use Ctrl+y to copy selected area to system buffer and Ctrl+P
to paste from system buffer into Vim. You can change bindings in .vimrc

##Known issues

 * Snippets yet not working as intended
 * Tab autocompletion has some bugs, work in progress

Last updated: Thu Feb 14 14:30:54 MSK 2013
