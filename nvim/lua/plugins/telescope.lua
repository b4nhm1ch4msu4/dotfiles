return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim', { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' } },
  config = function()
    local actions = require("telescope.actions")
    require("telescope").setup {
      defaults = {
        mappings = {
          i = {
            ["<esc>"] = actions.close
          },
        },
      },
      extensions = {
        fzf = {} }
    }
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>fo', builtin.oldfiles, { desc = 'Telescope recents open files' })
    vim.keymap.set('n', '<leader>fw', builtin.live_grep, { desc = 'Telescope find word' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
    vim.keymap.set('n', '<leader>fc', function() builtin.find_files { cwd = vim.fn.stdpath("config") } end,
      { desc = 'Telescope find files' })
  end
}
