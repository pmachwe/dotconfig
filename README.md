# Introduction

This repository contains various configuration files. I am also planning to collect resources related to various configuration in this repo as well. This information will be added into this `README.md` file.

# Notes

## Nvim

#### LSP
  - For python, install using `pip install python-lsp-server[all]`.
  - For CPP, install `clangd`.

#### Treesitter
  - Need to install parsers using `TSInstall` which has tab completion.
  - Install for `cpp`, `python`, `bash`.

# Resources

## Nvim

#### [Vim Registers](https://www.youtube.com/watch?v=I5QGlfbuCfs)

Fantastic video explaining the various types of registers in Vim as well has some great examples of how to use them.
  - `:reg` command to view contents of registers.
  - `"a` to insert contents of register `a` in normal mode.
  - `<C-R>a` to insert contents of register `a` in insert mode.

#### [Native LSP](https://www.youtube.com/watch?v=NXysez2vS4Q)
  - [Blog](https://www.chrisatmachine.com/Neovim/27-native-lsp/).
  - Using the above settings for `lspconfig` and `compe` plugins.

## Bash

## Tmux

### [The Tao of Tmux](https://leanpub.com/the-tao-of-tmux/read)

This is an excellent resource to understand the workings and configuration for `Tmux`.

### [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)

To setup TMUX plugin mananger:

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
and add the plugins to the `.tmux.conf` and add the add the following line at the end:
```
run '~/.tmux/plugins/tpm/tpm'
```

Now, source the configuration and then call `prefix I` to install the plugin.
