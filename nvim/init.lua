-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("tabnine").setup({
  disable_auto_comment = false,
  accept_keymap = "<C-cr>",
  dismiss_keymap = "<C-]>",
  debounce_ms = 300,
  suggestion_color = { gui = "#808080", cterm = 244 },
  exclude_filetypes = { "TelescopePrompt" },
})
