# dotfiles

This is my personal preference. Please feel free to use it or give me feedback to improve. Welcome all different perspectives. ;)

## How to setup

### VIM
```
cd ~
git clone https://github.com/jaesuk/dotfiles .dotfiles

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### NVIM

#### Install

1. Install [NvChad](https://nvchad.com/).
```
git clone https://github.com/NvChad/starter ~/.config/nvim && nvim
rm -rf ~/.config/nvim/.git
```
2. Copy files to set up the plugins, e.g. [`go.vim`](https://github.com/ray-x/go.nvim)

```
cd ~
git clone https://github.com/jaesuk/dotfiles .dotfiles
cp -a ~/.dotfiles/.config/nvim ~/.config/nvim
```
3. Execute `:MasonInstallAll` and `:Lazy` to install or update plugins.
   * For instance, `gopls`, `go-debug-adapter`, `goimports`, `golangci-lint`

#### Uninstall
```
rm -rf ~/.cache/nvim 
rm -rf ~/.config/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
```


