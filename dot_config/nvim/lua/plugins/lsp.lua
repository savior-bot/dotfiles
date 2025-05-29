-- ~/.config/nvim/lua/plugins/lsp.lua
return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      'saghen/blink.cmp'
    },
    config = function()
      local capabilities  = require('blink.cmp').get_lsp_capabilities(config.cababilities )
      require("lspconfig").lua_ls_setup {capabilites = capabilities }
      -- Keybinds when LSP attaches to a buffer
      -- Navigation
      vim.keymap.set("n","<leader>ld", vim.lsp.buf.definition, opts, {desc  = "get [D]efinition"}) -- Go to definition
      vim.keymap.set("n", "<leader>lk", vim.lsp.buf.hover, opts, {desc = "Show Docs"}) -- Show documentation
      vim.keymap.set("n", "<leader>ln", vim.lsp.buf.rename, opts, {desc = "Rename Symbol"}) -- Rename symbol

      -- Diagnostics
      vim.keymap.set("n", "<leader>[d", vim.diagnostic.goto_prev, opts, {desc = "Rename Symbol"}) -- Previous diagnostic
      vim.keymap.set("n", "<leader>]d", vim.diagnostic.goto_next, opts, {desc = "Rename Symbol"}) -- Next diagnostic
    end
  },
  -- nvim-cmp setup (autocompletion)
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
    end,
  },
}

