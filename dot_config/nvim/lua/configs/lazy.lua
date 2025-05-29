require("configs.options")  -- Load core settings first
require("configs.keymaps")  -- Then keymaps
require("configs.autocmds") -- And autocommands
require("configs.colors")

-- Bootstrap lazy.nvim if not installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
vim.opt.termguicolors = true 
vim.opt.background = "dark"

-- Set up plugins
require("lazy").setup({
  spec = {
    {
      "rebelot/kanagawa.nvim",
      config = function()
        require("kanagawa").setup({
          transparent = false,  -- Enable transparency
          colors = {
            theme = {
              all = {
                ui = {
                  --bg_gutter = "none"  -- Make line number background transparent
                }
              }
            }
          }
        })
        vim.cmd.colorscheme("kanagawa-wave")

        -- Additional transparency tweaks (optional)
      end
    },
    { import = "plugins" },
  },
})

        

