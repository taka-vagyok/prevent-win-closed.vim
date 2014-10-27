prevent-win-closed.vim
======================

## About

When they close file with :q or :qa, tha last gvim window is closed.
This plugin can prevent such a case in command mode.

This function is disabled as defalut. Please enable this plugin by :PreventWinClosedEnable or set g:prevent_win_closed_enable = 1 in vim config file(e.g. ~/.vimrc), then the last gvim window will not close with q, qa or qaw.


Why is the function diabled as default?

If you set default editor as gvim, you may open many window with many gvim process. In case, I wolud like not to close one window. so just type :PreventWinClosedEnable in one window, you can prevent the all gvim window closed.

__Requirements__
- Vim

__Recommends__ (To install and manage):
- [NeoBundle](https:://github.com/Shougo/neobundle.vim)

## Quick Start

To use this pluging, all you have to do is install and type :PreventWinClosedEnable.

### Install

1. Install NeoBundle plugin to vim
2. Add followings in vim config file.

	<pre> NeoBundle "taka-vagyok/prevent-win-closed.vim"</pre>

3. Launch vim and exec following command
	
	<pre> :NeoBundleInstall</pre>
	
4. Restart gvim

### Disable/Enable plugin by command

Disable to prevent this last window closed.

	:PreventWinClosedDiable

Enable to prevent this last window closed.

	:PreventWinClosedEnable

## Configure (Optional) 

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

## Caveat

### Override some command by cavvend

This plugin override q, qa, aq, waq, wqa, quit, qall and quitall.
If you customized those command, this plugin may affect your customize.
