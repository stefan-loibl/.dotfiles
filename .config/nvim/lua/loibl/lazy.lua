-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    {
      "sainnhe/gruvbox-material",
      lazy = false,
      priority = 1000,
      config = function()
        vim.cmd([[set background=dark]])
        vim.cmd([[let g:gruvbox_material_background = 'medium']])
        vim.cmd([[let g:gruvbox_material_better_performance = 1]])
        vim.cmd([[colorscheme gruvbox-material]])
      end,
    },

    -- LSP
    { "williamboman/mason.nvim" },

    -- debugging
    { "mfussenegger/nvim-dap" },
    { "leoluz/nvim-dap-go" },
    { "rcarriga/nvim-dap-ui" },
    { "theHamsta/nvim-dap-virtual-text" },
    { "nvim-neotest/nvim-nio" },

    -- autocompletion
    { "hrsh7th/nvim-cmp" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "hrsh7th/cmp-nvim-lua" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-nvim-lsp-document-symbol" },
    { "L3MON4D3/LuaSnip" },
    { "saadparwaiz1/cmp_luasnip" },
    { "onsails/lspkind-nvim" },

    -- treesitter
    {
      "nvim-treesitter/nvim-treesitter",
      lazy = false,
      build = ':TSUpdate',
    },
    
    { "stevearc/oil.nvim" },
    --{ "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope.nvim" },
    { "nvim-telescope/telescope-ui-select.nvim" },
    { "ThePrimeagen/harpoon" },
    --{ "tpope/vim-fugitive" },
    { "tpope/vim-surround" },
    { "nvim-lualine/lualine.nvim" },
    { "arkav/lualine-lsp-progress" },
    --{ "mhartington/formatter.nvim" },
    { "NvChad/nvim-colorizer.lua" },

    {
      "iamcco/markdown-preview.nvim",
      cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
      ft = { "markdown" },
      build = function()
        vim.fn["mkdp#util#install"]()
      end,
    },
  },
})

-- " LSP
-- Plug 'neovim/nvim-lspconfig'
-- Plug 'kabouzeid/nvim-lspinstall'
-- 
-- " typescriptreact syntax highlighting
-- Plug 'leafgarland/typescript-vim'
-- Plug 'peitalin/vim-jsx-typescript'
-- 
-- " Java
-- Plug 'MunifTanjim/nui.nvim'
-- Plug 'nvim-java/lua-async-await'
-- Plug 'nvim-java/nvim-java-refactor'
-- Plug 'nvim-java/nvim-java-core'
-- Plug 'nvim-java/nvim-java-test'
-- Plug 'nvim-java/nvim-java-dap'
-- Plug 'nvim-java/nvim-java'
-- Plug 'JavaHello/spring-boot.nvim'
