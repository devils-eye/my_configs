-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

vim.opt.relativenumber = true
vim.opt.wrap = true
reload('plugin')
require('tabnine').setup({
  disable_auto_comment=true,
  accept_keymap="<A-CR>",
  dismiss_keymap = "<C-]>",
  debounce_ms = 800,
  suggestion_color = {gui = "#808080", cterm = 244},
  exclude_filetypes = {"TeslescopePrompt"},
  log_file_path = nil,
})
-- setting up colorizer --> Suggested by gpt
require'colorizer'.setup(
  {'*';}, -- the '*' indicates that colorizer should be active in all file types
  {
    RGB = true; -- enable RGB color format
    RRGGBB = true; -- enable RRGGBB color format
    names = true; -- enable support for color names like 'White','Orange'
    RRGGBBAA = true; -- enable RRGGBBAA color format
    rgb_fn = true; -- enable CSS-style RGB support
    hsl_fn = true; -- enable CSS-style HSL support
    css = {names = true; rgb_fn = true}; -- enable full CSS color support
    css_fn = true; -- enable CSS function calls
  }
)

-- emmet setup --> suggested by gpt
vim.g.user_emmet_leader_key = ','

-- setting up command line
require('fine-cmdline').setup({
  vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})
})

-- setting autoformatter for python
local null_ls = require("null-ls")
null_ls.setup({
    sources = {
        null_ls.builtins.formatting.black.with({
            extra_args = { "--fast" },  -- Optional: additional arguments for black
        }),
    },
})

-- Autoformat on save python
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.py",
    callback = function()
        vim.lsp.buf.format({async = false})
    end,
})

-- customs bindings
-- making words uppercase
lvim.keys.insert_mode["<C-u>"] = "<Esc>viwUea"
