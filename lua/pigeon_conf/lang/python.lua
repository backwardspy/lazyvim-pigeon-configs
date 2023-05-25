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
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")

      local sources = {
        nls.builtins.formatting.black,
        nls.builtins.formatting.isort,
        nls.builtins.diagnostics.mypy,
      }

      for _, source in ipairs(sources) do
        if vim.fn.executable(source._opts.command) == 1 then
          opts.sources[#opts.sources + 1] = source
        end
      end

      return opts
    end,
  },
}
