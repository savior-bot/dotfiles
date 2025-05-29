local map = vim.keymap.set
vim.g.mapleader = " "

-- Menu navigations
map("n", "<leader>ef", function()
  vim.cmd.Ex()
end, {desc = "Open Explorer"})

-- Quick Conifig 

map("n", "<leader>cs", function()
  vim.cmd(":source %")
end, {desc = "[C]onfig [S]ource"})

map("n", "<leader>cp", function()
  vim.cmd("e ~/.config/nvim/init.lua")
end, {desc = "[C]onfig [P]ath"})

map("n", "<leader>tn", function()
 vim.cmd.tabNext()
end, {desc = "Next tab"}
)
map("n", "<leader>tt", function()
 vim.cmd.tabnew()
end, {desc = "New tab"}
)
