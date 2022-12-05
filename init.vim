call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-context'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.*' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
Plug 'preservim/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
Plug 'folke/tokyonight.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'windwp/nvim-autopairs'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'sbdchd/neoformat'
Plug 'preservim/nerdcommenter'
Plug 'mhinz/vim-startify'
Plug 'vim-latex/vim-latex'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'onsails/lspkind.nvim'
Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }
Plug 'kdheepak/lazygit.nvim'
Plug 'airblade/vim-gitgutter'
Plug 'ThePrimeagen/git-worktree.nvim'
Plug 'ldelossa/gh.nvim', {requires: "ldelossa/litee.nvim"}
Plug 'ThePrimeagen/vim-be-good'
Plug 'mbbill/undotree'
Plug 'uga-rosa/ccc.nvim'
Plug 'p00f/nvim-ts-rainbow'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'numToStr/Comment.nvim'
Plug 'kylechui/nvim-surround', {tag: "*", config: function() require("nvim-surround").setup({}) end}
call plug#end()




fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup IGLOO_DEVELOPMENT
    autocmd!
    autocmd BufWritepre * :call TrimWhitespace()
augroup END

require('iglooDevelopment')
