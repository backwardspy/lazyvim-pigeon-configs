return {
  {
    "neovim/nvim-lspconfig",
    dependencies = { { "ray-x/go.nvim", config = true }, "ray-x/guihua.lua" },
    opts = {
      servers = { gopls = {} },
    },
  },
}
