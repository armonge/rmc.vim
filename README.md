# rmc.vim

Robotmate rmc's syntax highlighting and other niceties for VIM.

## Screenshot

![Syntax Screenshot](/sample.png?raw=true "Syntax Screenshot")

## Installation

You install rmc.vim like any other vim plugin.

### Pathogen
```
cd ~/.vim/bundle
git clone git://github.com/armonge/rmc.vim.git
```

### Voom

Edit your plugin manifest (voom edit) and add:

```
armonge/rmc.vim
```

### VimPlug
Place this in your .vimrc:

```
Plug 'armonge/rmc.vim'
```

Then run the following in Vim:

```
:source %
:PlugInstall
```

### NeoBundle

Place this in your .vimrc:
```
NeoBundle 'armonge/rmc.vim'
```

Then run the following in Vim:

```
:source %
:NeoBundleInstall
```

No plugin manager
Copy rmc.vim's subdirectories into your vim configuration directory:

```
cd /tmp && git clone git://github.com/armonge/rmc.vim.git
cp -r rmc.vim/* ~/.vim/
```

