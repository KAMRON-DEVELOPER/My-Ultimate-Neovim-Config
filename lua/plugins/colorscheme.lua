return {
  {
    "zaldih/themery.nvim",
    lazy = false,

    config = function()
      require("themery").setup({
        themes = {
          "onedark",
          "catppuccin",
          "tokyonight",
          {
            name = "Gruvbox dark",
            colorscheme = "gruvbox",
            before = [[vim.opt.background = "dark"]],
          },
          {
            name = "Gruvbox light",
            colorscheme = "gruvbox",
            before = [[vim.opt.background = "light"]],
          }
        },
        livePreview = true,
      })
    end
  },
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,

    -- config = function()
    --   require("onedark").setup({
    --     transparent = true,
    --     style = "cool", -- "dark", "darker", "cool", "deep", "warm", "warmer"
    --   })
    --   vim.cmd("colorscheme onedark")
    -- end,
  },
  {
    {
      "catppuccin/nvim",
      lazy = false,
      name = "catppuccin",
      priority = 1000,

      -- config = function()
      --   vim.cmd("colorscheme catppuccin-frappe") -- latte, frappe, macchiato, mocha
      -- end
    }
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,

    -- config = function()
    --   vim.cmd("colorscheme tokyonight-storm") -- moon, storm, night, day
    -- end,
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
    opts = {}
  }
}
