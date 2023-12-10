local set = vim.opt

vim.cmd.colorscheme("melange")

set.expandtab = true -- no real tabs please!
set.shiftround = true -- when at 3 spaces, and I hit > ... go to 4, not 5
set.shiftwidth = 2 -- auto indent amount when using indents ex >> and <<
set.softtabstop = 2 -- when hitting tab or backspace, how wide should a tab be
set.tabstop = 2 -- tabs width
set.autoindent = true -- keep indenting after newline
set.smartindent = true -- ident wisely
set.smarttab = true -- insert tabs on the start according to shiftwidth, not tabstop

set.number = true -- show line numbers
set.laststatus = 2 -- always show the status line
set.linespace = 0 -- don't insert any extra pixel lines between rows
set.report = 0 -- tell us when anything is changed via :...
set.shortmess = "aOstTc" -- shortens messages to aviod 'press a key' prompt
set.ruler = true -- always show current positions along the bottom
set.showcmd = true -- show the command being typed
set.signcolumn = "yes" -- Use a gutter for git-gutter and LSP messages
set.completeopt = "longest,menuone,noselect" -- Required settings for nvim-cmp
set.conceallevel = 2 -- Hide "concealed" syntax, for example in norg files

set.spell = true
set.spelllang = { "en_us" }

set.lazyredraw = true -- speed up macros

set.termguicolors = true
set.background = "dark"

set.ttimeout = true
set.updatetime = 150

-- Required by which-key
vim.o.timeout = true
vim.o.timeoutlen = 300

-- Clipboard
set.clipboard:append({ "unnamed", "unnamedplus" })
