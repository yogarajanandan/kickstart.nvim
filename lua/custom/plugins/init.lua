-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
-- local lspconfig = require('lspconfig')

-- Enable Pyright LSP for Python
-- lspconfig.pyright.setup{
--   capabilities = require('cmp_nvim_lsp').default_capabilities(),
-- }

return {
  {
    'github/copilot.vim',
    event = 'InsertEnter',
  },
  {
    'saltstack/salt-vim',
    ft = 'sls',
  },
  {
    'nvim-telescope/telescope-live-grep-args.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim' },
  },
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      'github/copilot.vim', -- or "zbirenbaum/copilot.lua"
      'nvim-lua/plenary.nvim',
    },
    build = 'make tiktoken', -- Only on macOS or Linux
    opts = {
      -- Configuration options
    },
  },

  --config = function()
  --  -- Disable default Tab mapping
  --  vim.g.copilot_no_tab_map = true
  --  -- Map Right Arrow to accept Copilot suggestions
  --  vim.api.nvim_set_keymap('i', '<C-CR>', 'copilot#Accept("<CR>")', { expr = true, silent = true })
  --  end,
}
