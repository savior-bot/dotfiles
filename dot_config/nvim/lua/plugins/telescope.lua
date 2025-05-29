return {
  {
    'nvim-telescope/telescope.nvim',
    event = "VeryLazy",
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    config = function()
      require('telescope').setup {
        pickers = {
          find_files = {
            theme = "ivy"
          }
        },
        extensions = {
          fzf = {}
        }
      }

      require('telescope').load_extension('fzf')

      vim.keymap.set("n", "<space>fh", require('telescope.builtin').help_tags, {desc = "[F]uzzy [H]elp"})
      vim.keymap.set("n", "<space>ff", require('telescope.builtin').find_files, {desc = "[F]uzzy [F]inder"})
      vim.keymap.set("n", "<space>fb", require('telescope.builtin').buffers, {desc = "[F]ind [B]uffers"})

      vim.keymap.set("n", "<space>cf", function()
        require('telescope.builtin').find_files {
          cwd = vim.fn.stdpath("config")
        }
      end, {desc = "[C]onfig [F]inder"})


      vim.keymap.set("n", "<space>cc", function()
        require('telescope.builtin').find_files {
          cwd = "~/.config"
        }
      end, {desc = "[C]onfig [C]ore"})

      vim.keymap.set("n", "<space>ep", function()
        require('telescope.builtin').find_files {
          cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy")
        }
      end)
    end
  }
}
