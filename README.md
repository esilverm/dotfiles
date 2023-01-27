# dotfiles

These are my dotfiles. I use these to customize the machines I use and keep the development experience consistent between them. 

### Structure
For clarity, each folder is named after a package and contains every config file used by that package. For the most part, the files are relative to home (i.e the file `tmux/.tmux.conf` goes to `~/.tmux.conf`).

The setup structure relies on GNU stow. For example, if you would like to symlink the vim files, run `stow vim` and it will recursively add the dotfiles to your home, but they are still managable from this repository. 

