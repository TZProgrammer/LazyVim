local function toggle_diffview(cmd)
  if next(require("diffview.lib").views) == nil then
    vim.cmd(cmd)
  else
    vim.cmd("DiffviewClose")
  end
end

return {
  "sindrets/diffview.nvim",

  cmd = { "DiffviewOpen", "DiffviewFileHistory", "DiffviewClose" },

  cond = is_git_root,

  keys = {
    { "<leader>Do", function() toggle_diffview("DiffviewOpen") end, desc = "Diff Index", },
    { "<leader>DO", ":DiffviewOpen ", desc = "Prompt DiffviewOpen", silent = false},
    { "<leader>Dm", function() toggle_diffview("DiffviewOpen master..HEAD") end, desc = "Diff local master", },
    { "<leader>DM", function() toggle_diffview("DiffviewOpen origin/HEAD") end, desc = "Diff origin master", },
    { "<leader>Dfh", function() toggle_diffview("DiffviewFileHistory %") end, desc = "Open diffs for current File", },
    { "<leader>Dh", function() toggle_diffview("DiffviewFileHistory") end, desc = "Open diffs for current File", },
  },

  config = function()
    local actions = require("diffview.actions")

    require("diffview").setup({
      view = { merge_tool = { layout = "diff4_mixed", }, },

      keymaps = {
        view = {
          { "n", "q", actions.close, { desc = "Close help menu" } },
        },
        file_panel = {
          { "n", "q", "<cmd>DiffviewClose<cr>", { desc = "Close help menu" } },
        },
        file_history_panel = {
          { "n", "q", "<cmd>DiffviewClose<cr>", { desc = "Close help menu" } },
        },
      }
    })
  end,
}
