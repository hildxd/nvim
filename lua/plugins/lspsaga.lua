return {
  {
    "nvimdev/lspsaga.nvim",
    config = function()
      require("lspsaga").setup({})
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter", -- optional
      "nvim-tree/nvim-web-devicons", -- optional
    },
    keys = {
      {
        "<leader>ca",
        function()
          LazyVim.lsp.execute({
            command = "<cmd>Lspsaga code_action<CR>",
          })
        end,
        desc = "Goto Source Definition",
      },
    },
  },
}
