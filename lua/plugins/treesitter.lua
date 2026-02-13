return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      -- Nix manages our parsers, so don't try to install them via Neovim
      auto_install = false,
      ensure_installed = {},
    },
  },
}
