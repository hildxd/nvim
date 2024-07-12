return {
  "folke/flash.nvim",
  event = "VeryLazy",
  dependencies = {
    {
      "AstroNvim/astrocore",
      opts = {
        mappings = {
          x = {
            ["<CR>"] = {
              function() require("flash").jump() end,
              desc = "Flash",
            },
            ["R"] = {
              function() require("flash").treesitter_search() end,
              desc = "Treesitter Search",
            },
            ["<S-CR>"] = {
              function() require("flash").treesitter() end,
              desc = "Flash Treesitter",
            },
          },
          o = {
            ["r"] = {
              function() require("flash").remote() end,
              desc = "Remote Flash",
            },
            ["R"] = {
              function() require("flash").treesitter_search() end,
              desc = "Treesitter Search",
            },
            ["<CR>"] = {
              function() require("flash").jump() end,
              desc = "Flash",
            },
            ["<S-CR>"] = {
              function() require("flash").treesitter() end,
              desc = "Flash Treesitter",
            },
          },
          n = {
            ["<CR>"] = {
              function() require("flash").jump() end,
              desc = "Flash",
            },
            ["<S-CR>"] = {
              function() require("flash").treesitter() end,
              desc = "Flash Treesitter",
            },
          },
        },
      },
    },
  },
  opts = {},
}
