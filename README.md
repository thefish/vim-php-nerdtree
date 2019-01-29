This is set of my favoutite Vim plugins. They turn Vim into a lightweight console IDE :)

Plugins are collected with web development in mind, so support of Python, PHP, and Common Lisp is provided.

Thanks to [gmarik](http://github.com/gmarik/) for Vundle and all the people who develop and maintain brilliant Vim plugins!

##Requirements
 * git
 * ctags-exuberant with patch. [Read more on ctags bug and get patch](http://dfrank.ru/ctags581?en).
 * Common Lisp interpreter (preferrably SBCL 1.1+) for slimv plugin. [Get SBCL](http://sbcl.org/platform-table.html).
 * xclip if you have vim compiled without system clipboard support

##Installation

    cd ~
    git clone git://github.com/thefish/vim-php-nerdtree.git .vim
    ln -s ~/.vim/.vimrc .vimrc
    cd .vim/
    git submodule update --init bundle/vundle
    vim
    :BundleInstall

###Indexer setup

Open Indexer projects list:

    vim ~/.indexer_files

then add some entries to file, similar to following template:

    [python-project]
    option:ctags_params = " --languages=python" 
    /home/user/path/to/python/project

    [php-project]
    option:ctags_params = " --languages=php" 
    /home/user/path/to/php/project

Next time you run vim in your project folder, :IndexerRebuild will be called,
so you will have "go to definition" and autocomplete on Tab out of the box.

One more note about Python projects: By default, ctags generates tags 
for Python functions, classes, class members, variables definitions *and*
declarations *and*, in some cases, usages ([more](http://tartley.com/?p=1277) 
on this issue).
TL;DR: To not clutter your tags too much, i recommend you to use these
settings for Python projects:

        [your-project-name]
        option:ctags_params = " --languages=python --python-kinds=-iv --exclude=build --exclude=dist " 
        /home/user/path/to/python/project

Now you'll have much cleaner "go to definition" (Ctrl-] in this .vimrc), and 
lack of tags is compensated with lots of ways to fuzzy-find inline usages and 
source files (thanks to [CtrlP](http://github.com/kien) authors).

Honestly, tag file management is a very basic usage of Indexer, if you like 
to use this tool to full power, 
[read Indexer docs](http://www.vim.org/scripts/script.php?script_id=3221).

###System clipboard
Since i am using console Vim, i use xclip to exchange the bufffer with
desktop environment. You *don't need this* if you have Vim compiled with 
system clipboard support.

    sudo apt-get install xclip

Now you can use Ctrl+y to copy selected area to system buffer and Ctrl+P
to paste from system buffer into Vim. You can change bindings in .vimrc

##Known issues

 * Snippets yet not working as intended (at least so well as i want them to :)

Last updated:  
Thu Aug 15 05:14:49 MSK 2013
