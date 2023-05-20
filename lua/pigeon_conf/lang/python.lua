return {
  {
    "neovim/nvim-lspconfig",
    dependencies = { "HallerPatrick/py_lsp.nvim" },
    opts = {
      servers = { pyright = {} },
      setup = {
        pyright = function(_, _)
          require("py_lsp").setup()
          return true
        end,
      },
    },
  },
}
