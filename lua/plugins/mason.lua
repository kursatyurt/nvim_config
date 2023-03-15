return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "python-lsp-server",
        "autoflake",
        "pydocstyle",
        "black",
        "isort",
        "clangd",
        "cpplint",
        "cpptools",
        "clang-format",
        "latexindent",
        "ltex-ls",
        "shellcheck",
        "shellharden",
        "cmake-language-server",
        "cmakelang",
        "cmakelint",
        "prettier",
        "markdownlint",
        "cbfmt",
        "actionlint",
        "bash-debug-adapter",
        "bash-language-server",
        "beautysh",
        "codespell",
        "debugpy",
        "dockerfile-language-server",
        "fortls",
        "gitlint",
        "yamlfmt",
        "yaml-language-server",
      },
    },
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.sources = {
        -- formatter
        nls.builtins.formatting.black,
        nls.builtins.formatting.isort,
        nls.builtins.formatting.autoflake,
        nls.builtins.formatting.black.with({ extra_args = { "-l 120" } }),
        nls.builtins.formatting.latexindent,
        nls.builtins.formatting.latexindent.with({ extra_args = { "-r" } }),
        nls.builtins.formatting.markdownlint,
        nls.builtins.formatting.prettierd,
        -- code_actions
        nls.builtins.code_actions.refactoring,
        -- diagnostics
        nls.builtins.diagnostics.chktex,
        nls.builtins.diagnostics.pylint.with({
          diagnostics_postprocess = function(diagnostic)
            diagnostic.code = diagnostic.message_id
          end,
          extra_args = { "--max-line-length=120" },
        }),
      }
    end,
  },
}
