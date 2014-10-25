prevent-win-closed.vim
======================

## About

When I close file with :q or :qa, gvim window is closed.
This plugin prevent such an issue.

To enable this plugin, please type :PreventWinClosedEnable or set g:prevent_win_closed_enable = 1 in vim config file(e.g. ~/.vimrc).

__Requirements__:
- Vim

__Recommends__(To install):
- [NeoBundle](https:://github.com/Shougo/neobundle.vim)

## Quick Start

To use this pluging, you don't have to do anything without install.

### Install

1. Install NeoBundle plugin to vim
2. Add followings in vim config file.

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
Add following values into vim config file.


If set g:prevent_win_closed_enable = 1, this plugin get enable. (Default: 0)
	
	let g:prevent_win_closed_enable = 1
	
If set g:prevent_win_closed_quit_enable = 1, Prevent gvim closed as quit/quitall/qall commands, too. (Default: 0)

	let g:prevent_win_closed_quit_enable = 1
 

## Uninstall

1. Remove follwings in vim config file.:

	<pre>NeoBundle "taka-vagyok/prevent-win-closed.vim"</pre>

2. Launch vim and exec following command

	<pre>:NeoBundleClean</pre>

