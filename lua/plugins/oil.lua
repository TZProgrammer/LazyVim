return {
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("oil").setup({
        columns = { "icon" },
        keymaps = {
          ["<C-h>"] = false,
          ["<C-s>"] = "actions.select_split",

          ["<C-c>"] = false,
          ["q"] = "actions.close",

          ["<C-l>"] = false,
          ["<A-r>"] = "actions.refresh",
        },
        view_options = {
          show_hidden = true,
        },
      })

      -- Open parent directory in current window
      vim.keymap.set("n", "<leader>fo", "<CMD>Oil<CR>", { desc = "Open parent directory" })

      -- Open parent directory in floating window
      vim.keymap.set("n", "<leader>fO", require("oil").toggle_float)
    end,
  },
}
