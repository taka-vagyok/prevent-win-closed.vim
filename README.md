prevent-win-closed.vim
======================

## About

When I close file with :q or :qa, gvim window is closed.
This plugin prevent such an issue
Though this plugin is disable as Default, please enable when you use by PreventWinClosedEnable.

__Requirements__:
- Vim

__Recommends__(To install):
- [NeoBundle](https:://github.com/Shougo/neobundle.vim)

## Quick Start

To use this pluging, you don't have to do anything without install.

### Install

1. Install NeoBundle plugin to vim
2. Add followings in .vimrc

	<pre> NeoBundle "taka-vagyok/prevent-win-closed.vim"</pre>

3. Launch vim and exec following command
	
	<pre> :NeoBundleInstall</pre>
	
4. Restart gvim

### Disable/Enable plugin by command

Disable this plugin

	:PreventWinClosedDiable

Enable this plugin

	:PreventWinClosedEnable

## How to configure (Optional) 

Two option value are predefined.
Add following values into .vimrc.


If set g:prevent_win_closed_enable = 1, this plugin get enable. (Default: 0)
	
	let g:prevent_win_closed_enable = 0
	
If set g:prevent_win_closed_quit_enable = 1, Prevent gvim closed as quit/quitall/qall commands. (Default: 0)

	let g:prevent_win_closed_quit_enable = 0
 

## Uninstall

1. Remove follwings:

	<pre>NeoBundle "taka-vagyok/prevent-win-closed.vim"</pre>

2. Launch vim and exec following command

	<pre>:NeoBundleClean</pre>

