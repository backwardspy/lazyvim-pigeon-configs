# pigeon's LazyVim configs

a set of sensible configurations for languages and tools i use in [LazyVim](https://lazyvim.org).

## configs

### `pigeon_conf.lang.rust`

adds rust support based around [`simrat39/rust-tools.nvim`](https://github.com/simrat39/rust-tools.nvim).

### `pigeon_conf.lang.python`

adds python support based around [`HallerPatrick/py_lsp.nvim`](https://github.com/HallerPatrick/py_lsp.nvim).

### `pigeon_conf.lang.nix`

adds nix support with the [`nil`](https://github.com/oxalica/nil) language server and [`alejandra`](https://kamadorueda.com/alejandra/) formatter.

## usage example

```lua
-- lua/config/lazy.lua
require("lazy").setup({
  spec = {
    {
      "LazyVim/LazyVim",
      import = "lazyvim.plugins",
    },

    ...

    "backwardspy/lazyvim-pigeon-configs",
    { import = "pigeon_conf.lang.rust" },
    { import = "pigeon_conf.lang.python" },
    { import = "pigeon_conf.lang.nix" },
  },

  ...
})
```
