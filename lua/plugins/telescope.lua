return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>sf",
      function ()
        require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") })
      end,
      desc = "Grep Files (Root Dir)"
    },
  },
}
