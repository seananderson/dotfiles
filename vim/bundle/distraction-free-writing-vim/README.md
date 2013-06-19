## Distraction Free Writing for Vim

Edit by Sean Anderson on 2013-06-18:
From https://github.com/laktek/distraction-free-writing-vim
I have edited some files and so cloned this into my dotfiles repository instead
of adding it as a submodule.

* Copy `plugin/DistractionFree.vim` to `~/.vim/plugin`

* Copy `syntax/mkd.vim` to `~/.vim/syntax`

* Copy `ftdetect/mkd.vim` to `~/.vim/ftdetect`

* Copy `colors/iawriter.vim` to `~/.vim/colors`

* In .vimrc, specify the colorschemes and fonts to use in fullscreen mode and normal mode.

		g:fullscreen_colorscheme - colorscheme to use in fullscreen mode 
		g:fullscreen_font font to use in fullscreen mode 
		g:normal_colorscheme - colorscheme to use in normal mode 
		g:normal_font - font to use in normal mode

example: 

```vim
	let g:fullscreen_colorscheme = "iawriter"
	let g:fullscreen_font = "Cousine:h14"
	let g:normal_colorscheme = "codeschool"
	let g:normal_font="Inconsolata:h14"
```
