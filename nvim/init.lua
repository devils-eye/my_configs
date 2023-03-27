-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("plugins.pine")
require("plugins.core")

require("tabnine").setup({
  disable_auto_comment = false,
  accept_keymap = "<C-CR>",
  dismiss_keymap = "<C-e]>",
  debounce_ms = 100,
  suggestion_color = { gui = "#808080", cterm = 244 },
  exclude_filetypes = { "TelescopePrompt" },
})
