return require("packer").startup(function(use)
    use "lewis6991/impatient.nvim"
    use "wbthomason/packer.nvim"
    use "nvim-lua/plenary.nvim"
    use "tpope/vim-repeat"
    use 'Xuyuanp/nerdtree-git-plugin'
    use 'mihaifm/bufstop'
    -- use "ryanoasis/vim-devicons"
    use "vwxyutarooo/nerdtree-devicons-syntax"
    use "mg979/vim-visual-multi"  
    -- easier coding
    use {"neoclide/coc.nvim", branch = "release"}
    use {"prettier/vim-prettier", run = "yarn install"}
    use { "hrsh7th/nvim-cmp", after = "lspkind-nvim", config = [[require('config.nvim-cmp')]] }
    use "numToStr/Comment.nvim"
    use "jiangmiao/auto-pairs"
    use { "Vimjas/vim-python-pep8-indent", ft = { "python" } }
    use "JoosepAlviste/nvim-ts-context-commentstring"
    use "MaxMEllon/vim-jsx-pretty"
    use "crusoexia/vim-dracula"
    use { "SirVer/ultisnips", event = "InsertEnter" }
    use { "honza/vim-snippets", after = "ultisnips" }
    use { "sbdchd/neoformat", cmd = { "Neoformat" } }
    use ("nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"})
    use "nvim-treesitter/nvim-treesitter-context"
    use "ggandor/leap.nvim"
    use {"preservim/nerdtree", requires = {{"ryanoasis/vim-devicons"}}}
  
    -- navigation
    use "ThePrimeagen/git-worktree.nvim"
    use "nvim-telescope/telescope.nvim"
    use {"nvim-telescope/telescope-fzf-native.nvim", run = "make"}
    use "ThePrimeagen/harpoon"
  
    -- git
    use "kdheepak/lazygit.nvim"
    use "airblade/vim-gitgutter"
    use {"ldelossa/gh.nvim", requires = {{"ldelossa/litee.nvim"}}}

  
    -- misc
    use "ThePrimeagen/vim-be-good"
    use "Eandrju/cellular-automaton.nvim"
    -- Reply and notebook stuff:
    use "hkupty/iron.nvim"
    use 'kana/vim-textobj-user'
    use 'kana/vim-textobj-line'
    use 'GCBallesteros/vim-textobj-hydrogen'
    use "GCBallesteros/jupytext.vim"

    -- use("KabbAmine/vCoolor.vim")

    -- use("KabbAmine/vCoolor.vim")
    use "mbbill/undotree"
    use{
      "nvim-lualine/lualine.nvim",
      requires = {"kyazdani42/nvim-web-devicons", opt = true}
    }
  
    use "lukas-reineke/indent-blankline.nvim"
    -- use("norcalli/nvim-colorizer.lua")
    use "uga-rosa/ccc.nvim"
    use ("lewis6991/spellsitter.nvim",
        {config = function() require("spellsitter").setup() end})
    use "p00f/nvim-ts-rainbow"
    use "nvim-pack/nvim-spectre"
  
    -- color themes
    use { "catppuccin/nvim", as = "catppuccin" }
    use "folke/tokyonight.nvim"
    -- if packer_bootstrap then
    --   require('packer').sync()
    -- end
       use {
      "rcarriga/nvim-notify",
      event = "BufEnter",
      config = function()
        vim.defer_fn(function()
          require("config.nvim-notify")
        end, 2000)
      end,
    }
    use {
  "folke/which-key.nvim",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}


  end)

 
