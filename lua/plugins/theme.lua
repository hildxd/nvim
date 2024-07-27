return {
  {
    "sho-87/kanagawa-paper.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      vim.cmd("colorscheme kanagawa-paper")
      local kanagawa_paper = require("lualine.themes.kanagawa-paper")

      require("lualine").setup({
        options = {
          theme = kanagawa_paper,
          -- ... your lualine config
        },
      })
    end,
  },
}
