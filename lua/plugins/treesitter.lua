return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- Nix manages our parsers, so we must force ensure_installed to be empty
      -- to prevent nvim-treesitter from trying to download/compile them.
      opts.ensure_installed = {}
      opts.auto_install = false
    end,
  },
}