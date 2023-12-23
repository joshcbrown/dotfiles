return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "storm" },
  },
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = true,
    priority = 1000, -- make sure to load this before all the other start plugins
  },
  { "ellisonleao/gruvbox.nvim", lazy = false },
}
