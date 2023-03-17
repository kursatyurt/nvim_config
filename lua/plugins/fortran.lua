return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      table.insert(
        opts.sources,
        nls.builtins.formatting.fprettify.with({
          extra_args = { "--enable-decl", "--enable-replacements", "--c-relations" },
        })
      )
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      autoformat = false,
      format = {
        timeout_ms = 20000, -- 20 seconds
      },
      servers = {
        fortls = {
          cmd = {
            "fortls",
            "--lowercase_intrisics",
            "--hover_signature",
            "--hover_language=fortran",
            "--use_signature_help",
          },
        },
      },
    },
  },
}
