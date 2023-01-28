# dotfiles

These are my dotfiles. I use these to customize the machines I use and keep the development experience consistent between them. 

### Structure
For clarity, each folder is named after a package and contains every config file used by that package. For the most part, the files are relative to home (i.e the file `tmux/.tmux.conf` goes to `~/.tmux.conf`).

### Setup Guide

1. Update your macOS to the latest version through system preferences

2. Generate a new public and private SSH key by running:

```
curl https://raw.githubusercontent.com/esilverm/dotfiles/HEAD/ssh.sh | sh -s "<your-email-address>
```

3. Clone this repo to `~/.dotfiles` with:

```
git clone --recursive git@github.com:esilverm/dotfiles.git ~/.dotfiles
```

4. Run the setup script with:

```
~/.dotfiles/setup.sh
```

5. Celebrate!