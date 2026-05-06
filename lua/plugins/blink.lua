return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      -- use a preset
      preset = "enter",

      -- use tab to accept
      ["<Tab>"] = { "accept", "fallback" },
      -- keep ctrl+e for going to end of line
      ["<C-e>"] = { "fallback" },
      ["<C-j>"] = { "select_next", "fallback" },
      -- select_prev or go up
      ["<C-k>"] = {
        function(cmp)
          if cmp.is_menu_visible() then
            return cmp.select_prev()
          end
          vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Up>", true, true, true), "n", true)
        end,
      },
      -- fallback enter
      ["<CR>"] = { "fallback" },
    },
  },
}
