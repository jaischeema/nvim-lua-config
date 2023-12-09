local function config()
  local lsp_zero = require('lsp-zero')

  lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({buffer = bufnr})
  end)
end

return {
  "VonHeikemen/lsp-zero.nvim",
  branch = 'v3.x',
  lazy = true,
  config = config
}
