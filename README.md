# My Configs

These dotfiles cover the configuration of a few tools I use,

- zsh + [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
- [neofetch](https://github.com/dylanaraps/neofetch)
  - Set to use [asahi](https://asahilinux.org/) logo
- [tmux](https://github.com/tmux/tmux/wiki)
  - [lazy](https://github.com/folke/lazy.nvim)
- git aliases

Note: Neovim config moved to a standalone [repo](https://github.com/dy-ma/nvim).

Guide to reinstalling: [Atlassian](https://www.atlassian.com/git/tutorials/dotfiles)

## Linux

When you inevitably reinstall Linux again, remember to do these things,

1. Run the [widevine installer](https://github.com/AsahiLinux/widevine-installer). Also available from `dnf`.
2. Install a Hack Nerd Font for Icons.
3. Install ZSH and Oh-My-Zsh before loading config.
4. Install [fastfetch](https://github.com/fastfetch-cli/fastfetch) (Called in .zshrc)
5. Install [Input remapper](https://github.com/sezanzeb/input-remapper) to map mouse side buttons.
6. Install neovim
7. Install tmux
8. Install [compat-lua-devel](https://github.com/vhyrro/luarocks.nvim) for luarocks.nvim
9. Follow the [guide](https://www.atlassian.com/git/tutorials/dotfiles) to pull dotfiles and set up bare config.
