# pigeon's LazyVim configs

a set of sensible configurations for languages and tools i use in [LazyVim](https://lazyvim.org).

## configs

### `pigeon_conf.lang.rust`

adds rust support based around [`simrat39/rust-tools.nvim`](https://github.com/simrat39/rust-tools.nvim).

### pigeon_conf.lang.python

adds python support based around [`HallerPatrick/py_lsp.nvim`](https://github.com/HallerPatrick/py_lsp.nvim).

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
  },

  ...
})
```
