return {
  "windwp/nvim-autopairs",
  event = "InsertEnter", -- Loads when you enter insert mode
  config = function()
    require("nvim-autopairs").setup({
      -- Your configuration here (optional)
    })
  end
}
