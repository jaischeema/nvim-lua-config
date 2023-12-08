vim.cmd.colorscheme("tokyonight")

vim.opt.expandtab = true -- no real tabs please!
vim.opt.shiftround = true -- when at 3 spaces, and I hit > ... go to 4, not 5
vim.opt.shiftwidth = 2 -- auto indent amount when using indents ex >> and <<
vim.opt.softtabstop = 2 -- when hitting tab or backspace, how wide should a tab be
vim.opt.tabstop = 2 -- tabs width
vim.opt.autoindent = true -- keep indenting after newline
vim.opt.smartindent = true -- ident wisely
vim.opt.smarttab = true -- insert tabs on the start according to shiftwidth, not tabstop

vim.opt.number = true -- show line numbers
vim.opt.laststatus = 2 -- always show the status line
vim.opt.linespace = 0 -- don't insert any extra pixel lines between rows
vim.opt.report = 0 -- tell us when anything is changed via :...
vim.opt.shortmess = "aOstTc" -- shortens messages to aviod 'press a key' prompt
vim.opt.ruler = true -- always show current positions along the bottom
vim.opt.showcmd = true -- show the command being typed
vim.opt.signcolumn = "yes" -- Use a gutter for git-gutter and LSP messages
vim.opt.completeopt = "longest,menuone,noselect" -- Required settings for nvim-cmp
vim.opt.conceallevel = 2 -- Hide "concealed" syntax, for example in norg files

vim.opt.spell = true
vim.opt.spelllang = { "en_us" }

vim.opt.lazyredraw = true -- speed up macros

vim.opt.termguicolors = true
vim.opt.background = "dark"
