return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      autoformat = false,
      servers = {
        clangd = {
          cmd = { "clangd", "--clang-tidy", "--completion-style=detailed", "--header-insertion=never" },
          init_options = {
            fallbackFlags = { "--std=c++23" },
          },
        },
      },
    },
  },
}
