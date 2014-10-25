prevent-win-closed.vim
======================

## About

When I close file with :q or :qa, gvim window is closed.
This plugin prevent such an issue.

__Requirements__:
- Vim

__Recommends__(To install):
- [NeoBundle](https:://github.com/Shougo/neobundle.vim)

## Quick Start

To use this pluging, you don't have to do anything without install.

1. Install NeoBundle plugin to vim
2. Add followings in .vimrc
	> NeoBundle "taka-vagyok/prevent-win-closed.vim"
3. Launch vim and exec following command
    > :NeoBundleInstall
4. Restart gvim

## How to configure (Optional) 

Two option value are predefined.
Add following values into .vimrc.

- g:prevent_win_closed_disable 
	- If set 1, This plugin get disable. (Default: 0)
	> let g:prevent_win_closed_disable = 0
- g:prevent_win_closed_quit_enable 
	- If set 1, Prevent gvim closed as quit/quitall/qall commands. (Default: 0)
	> let g:prevent_win_closed_quit_enable = 0
 

## Uninstall

1. Remove follwings:
	> NeoBundle "taka-vagyok/prevent-win-closed.vim"
2. Launch vim and exec following command
    > :NeoBundleClean

