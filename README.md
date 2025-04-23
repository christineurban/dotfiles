### How to install at `~` and manage it with a little Git trick (called a bare repo), which keeps your home directory clean while letting you track dotfiles:


```
git clone --bare git@github.com:yourusername/dotfiles.git $HOME/.dotfiles
```

This is a very common setup used with something like:

```
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```
Then you can do:

```
dotfiles status
dotfiles add .zshrc
dotfiles commit -m "Update zsh config"
```

This keeps your Git history inside `.dotfiles`, while letting the actual files sit in `~`.
