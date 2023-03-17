return {
  { "lervag/vimtex" },
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      table.insert(opts.sources, nls.builtins.formatting.latexindent.with({ extra_args = { "-r" } }))
      table.insert(opts.sources, nls.builtins.formatting.markdownlint)
      table.insert(opts.sources, nls.builtins.diagnostics.chktex)
    end,
  },
}
