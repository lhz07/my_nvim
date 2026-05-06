-- disable diagnostics of markdown
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        underline = {
          exclude = { "markdown" },
        },
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        markdown = {},
      },
    },
  },
}
