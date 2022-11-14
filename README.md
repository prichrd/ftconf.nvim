# ftconf.nvim

In the same spirit as [ftplugin](https://neovim.io/doc/user/usr_41.html#41.12), this plugin enables language-specific
configurations. It allows its user to configure a function to be called when a buffer is launched. Here is a sample
setup:

```lua
require'ftconf'.setup{
  go = function(bufnr, winid)
    -- Set window options
    vim.api.vim_win_set_option(1000, 'colorcolumn', '80,120')

    -- Set buffer options
    buf_set_keymap('n', '<Leader>p', '<cmd>lua echo"go!"', { noremap = true, silent = true })
  end,
  lua = function(bufnr, winid)
    -- Set window options
    vim.api.vim_win_set_option(1000, 'colorcolumn', '80')

    -- Set buffer options
    buf_set_keymap('n', '<Leader>p', '<cmd>lua echo"lua!"', { noremap = true, silent = true })
  end,
}
```

## Installing

ftconf requires Neovim and follows the standard runtime package structure. 
It is possible to install it with all popular package managers:

* [vim-plug](https://github.com/junegunn/vim-plug)
  * `Plug 'prichrd/ftconf.nvim'`
* [packer](https://github.com/wbthomason/packer.nvim)
  * `use 'prichrd/ftconf.nvim'`

## Usage

The documentation can be found at [doc/ftconf.txt](doc/ftconf.txt). You can 
also use the `:help ftconf.nvim` command inside of Neovim.
