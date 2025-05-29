return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",  -- Run `:TSUpdate` on first install
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects", -- Enhanced text objects
    "windwp/nvim-ts-autotag",                      -- Auto-close HTML/XML tags
  },
  config = function()
    require("nvim-treesitter.configs").setup({
      -- Required: Install parsers for these languages
      ensure_installed = {
        "lua", "vim", "vimdoc",     -- Essentials
        "bash", "python", "rust", "go", "javascript", "typescript", "html", "css",
      },

      -- Enable syntax highlighting
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },

      -- Enable indentation (experimental)
      indent = { enable = true },

      -- Enable incremental selection
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<CR>",     -- Enter starts selection
          node_incremental = "<CR>",   -- Incrementally expand selection
          scope_incremental = "<S-CR>", -- Expand to scope
          node_decremental = "<BS>",   -- Shrink selection
        },
      },

      -- Enable text objects (e.g., `af` for function, `ac` for class)
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@class.outer",
            ["ic"] = "@class.inner",
          },
        },
      },

      -- Auto-install missing parsers
      auto_install = true,
    })

    -- Optional: Extend filetypes for autotag (HTML/JSX/XML)
    require("nvim-ts-autotag").setup()
  end,
}
