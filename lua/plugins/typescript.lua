return {
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
    keys = {
      {
        "gD",
        function()
          local params = vim.lsp.util.make_position_params()
          LazyVim.lsp.execute({
            command = "TSToolsGoToSourceDefinition",
            arguments = { params.textDocument.uri, params.position },
            open = true,
          })
        end,
        desc = "Goto Source Definition",
      },
      {
        "gR",
        function()
          LazyVim.lsp.execute({
            command = "TSToolsFileReferences",
            arguments = { vim.uri_from_bufnr(0) },
            open = true,
          })
        end,
        desc = "File References",
      },
      {
        "<leader>co",
        function()
          LazyVim.lsp.execute({ command = "TSToolsOrganizeImports" })
        end,
        desc = "Organize Imports",
      },
      {
        "<leader>cM",
        function()
          LazyVim.lsp.execute({ command = "TSToolsAddMissingImports" })
        end,
        desc = "Add missing imports",
      },
      {
        "<leader>cu",
        function()
          LazyVim.lsp.execute({ command = "TSToolsRemoveUnused" })
        end,
        desc = "Remove unused imports",
      },
      {
        "<leader>cD",
        function()
          LazyVim.lsp.execute({ command = "TSToolsFixAll" })
        end,
        desc = "Fix all diagnostics",
      },
      {
        "<leader>cV",
        function()
          LazyVim.lsp.execute({ command = "typescript.selectTypeScriptVersion" })
        end,
        desc = "Select TS workspace version",
      },
    },
  },
}
