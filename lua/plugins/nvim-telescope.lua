return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        path_display = { "truncate " },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
    })

    -- set keymaps
    local keymap    = vim.keymap -- for conciseness
    local builtin   = require("telescope.builtin")

    keymap.set("n", "<leader>ff", builtin.find_files, {})
    keymap.set("n", "<leader>fg", builtin.live_grep,  {})
    keymap.set("n", "<leader>fb", builtin.buffers,    {})
    keymap.set("n", "<leader>fh", builtin.help_tags,  {})

  end,
}
