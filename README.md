Manage dotfiles with [RCM](http://robots.thoughtbot.com/rcm-for-rc-files-in-dotfiles-repos)

Requirements
------------

Set zsh as your login shell:

    chsh -s $(which zsh)

Install
-------

Clone:

    git clone git://github.com/sammynave/.dotfiles.git


Install [rcm](https://github.com/thoughtbot/rcm):

    brew tap thoughtbot/formulae
    brew install rcm

Install the dotfiles:

    env RCRC=$HOME/.dotfiles/rcrc rcup

This command will create symlinks for config files in your home directory.
Setting the `RCRC` environment variable tells `rcup` to use standard
configuration options:

* Exclude the `README.md`, `LICENSE`, and `Brewfile` files, which are part of
  the `dotfiles` repository but do not need to be symlinked in.


You can safely run `rcup` multiple times to update:

    rcup


Install [Vundle](https://github.com/gmarik/Vundle.vim)
`git clone https://github.com/gmarik/Vundle.vim.git ~/.dotfiles/vim/bundle/Vundle.vim`


Install `Droid Sans` font in `fonts` dir and set it in iterm2

Vim plugin [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) requires
additional compile step:
```
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer
```

Vim plugin [Tern for Vim](https://github.com/marijnh/tern_for_vim) requires
`nodejs` and a global `node` executable. then run: 
```
cd ~/.dotfiles/vim/bundle/tern_for_vim && npm install
```

## Apps
- [iterm2](http://iterm2.com/)
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
- [spectacle](http://spectacleapp.com/)
- [alfred](http://www.alfredapp.com/)
- [macvim](https://github.com/b4winckler/macvim)
- [homebrew](http://brew.sh/)
  - zsh
  - ctags
  - the_silver_searcher
  - tig
  - [rcm](https://github.com/thoughtbot/rcm)
  - rbenv
  - node

