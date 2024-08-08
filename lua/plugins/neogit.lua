return {
  "NeogitOrg/neogit",
  dependencies = {
    "sindrets/diffview.nvim",
    "nvim-telescope/telescope.nvim",
  },

  cmd = "Neogit",
  keys = {
    { "<Leader>gn", "<cmd>Neogit<CR>", desc = "Neogit" },
  },

  -- See: https://github.com/TimUntersberger/neogit#configuration
  opts = {
    disable_signs = false,
    disable_context_highlighting = false,
    disable_commit_confirmation = false,
    signs = {
      section = { ">", "v" },
      item = { ">", "v" },
      hunk = { "", "" },
    },
    integrations = {
      diffview = true,
    },
  },
}
