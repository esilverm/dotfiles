" use vim settings rather than vi
set nocompatible

" security
set nomodeline modelines=0

" set indentation spacing
set shiftwidth=2
set tabstop=2
set softtabstop=2
set autoindent

" tabs to spaces
set expandtab

" turn on line numbers
set number
set ruler

" show leaderkey when command is being made
set showcmd

" Solution for mac from here: https://www.thetopsites.net/article/53625973.shtml
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

let configs = [
\ "ui",
\ "plugins",
\ "keybindings",
\ "plugin-settings",
\]

for file in configs
	let x = expand("~/.vim/".file.".vim")
	if filereadable(x)
		execute 'source' x
	endif
endfor
