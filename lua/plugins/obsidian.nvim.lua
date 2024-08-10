return {
  "epwalsh/obsidian.nvim",
  version = "*",  -- recommended, use latest release instead of latest commit
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        name = "thomas",
        path = "~/Brain",
      },
    },

    daily_notes = {
      folder = "Recurring/Daily",
      default_tags = { "periodic/daily" }
    }
  },

  vim.keymap.set("n", "<leader>One", "<Cmd>ObsidianNew<CR>"),
  vim.keymap.set("n", "<leader>Ont", "<Cmd>ObsidianNewFromTemplate<CR>"),
  vim.keymap.set("n", "<leader>Of", "<Cmd>ObsidianFollowLink<CR>"),
  vim.keymap.set("n", "<leader>Olb", "<Cmd>ObsidianBacklinks<CR>"),
  vim.keymap.set("n", "<leader>Olf", "<Cmd>ObsidianLinks<CR>"),
  vim.keymap.set("v", "<leader>Olt", "<Cmd>ObsidianLink<CR>"),
  vim.keymap.set("v", "<leader>Oln", "<Cmd>ObsidianLinkNew<CR>"),
  vim.keymap.set("n", "<leader>Ot", "<Cmd>ObsidianToday<CR>"),
  vim.keymap.set("n", "<leader>O/", "<Cmd>ObsidianSearch<CR>"),
  vim.keymap.set("n", "<leader>Ost", ":ObsidianTags "),
  vim.keymap.set("n", "<leader>O ", "<Cmd>ObsidianQuickSwitch<CR>"),
  vim.keymap.set("n", "<leader>Od", "<Cmd>ObsidianDailies<CR>"),
  vim.keymap.set("n", "<leader>Oe", ":ObsidianExtractNote "),
  vim.keymap.set("n", "<leader>Op", "<Cmd>ObsidianPasteImg<CR>"),
  vim.keymap.set("n", "<leader>Or", ":ObsidianRename "),
}
