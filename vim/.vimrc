" use vim settings rather than vi
set nocompatible

" security
set nomodeline modelines=0

" set indentation spacing
set shiftwidth=2
set tabstop=2
set softtabstop=2
set autoindent

" tabs are tabs
set noexpandtab

" turn on line numbers
set number

let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

let configs = [
\ "ui",
\ "plugins",
\ "plugin-settings",
\]

for file in configs
	let x = expand("~/.vim/".file.".vim")
	if filereadable(x)
		execute 'source' x
	endif
endfor
