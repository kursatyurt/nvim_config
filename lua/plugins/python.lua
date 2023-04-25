return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts) end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      autoformat = false,
      servers = {
        pyright = {
          handlers = {
            ["textDocument/publishDiagnostics"] = function() end,
          },
          on_attach = function(client, _)
            client.server_capabilities.codeActionProvider = false
          end,
          settings = {
            pyright = {
              disableOrganizeImports = true,
            },
            python = {
              analysis = {
                autoSearchPaths = true,
                typeCheckingMode = "basic",
                useLibraryCodeForTypes = true,
              },
            },
          },
        },
        ruff_lsp = {
          on_attach = function(client, _)
            client.server_capabilities.hoverProvider = false
          end,
          init_options = {
            settings = {
              args = { "--line-length=120" },
            },
          },
        },
        jedi_language_server = {
          cmd = { "jedi-language-server" },
        },
      },
    },
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      table.insert(opts.sources, nls.builtins.code_actions.refactoring)
      table.insert(opts.sources, nls.builtins.code_actions.gitsigns)
      table.insert(opts.sources, nls.builtins.code_actions.shellcheck)
      table.insert(opts.sources, nls.builtins.completion.luasnip)
      table.insert(opts.sources, nls.builtins.formatting.black.with({ extra_args = { "-l 120" } }))
      table.insert(opts.sources, nls.builtins.formatting.isort)
      table.insert(opts.sources, nls.builtins.formatting.autoflake)
      table.insert(opts.sources, nls.builtins.diagnostics.ruff.with({ extra_args = { "--line-length 120" } }))
      table.insert(opts.sources, nls.builtins.diagnostics.clang_check)
      table.insert(opts.sources, nls.builtins.diagnostics.cmake_lint)
    end,
  },
}
