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
--  { "<leader>sf", ":lua require('telescope').extensions.live_grep_args.live_grep_args( { postfix = '-u' } )<CR>", desc = "Live Grep All (Root Dir)" },
  },
}
--    {
--      event = "VeryLazy",
--      "nvim-telescope/telescope-live-grep-args.nvim",
--      config = function(_, _)
--        require("lazyvim.util").on_load("telescope.nvim", function()
--          require("telescope").load_extension("live_grep_args")
--        end)
--      end,
--    },
--  },
