local options = {
    tabstop=4,
    softtabstop=4,
    shiftwidth=4,
    expandtab=true,
    smartindent=true,
    smartcase=true,
    termguicolors=true,
    swapfile=false,
    incsearch=true,
    scrolloff=8,
    showmode=false,
    hidden=true,
    relativenumber=true,
    cursorline=true,
    exrc=true,
    emo=true,
    nu=true,
    hls=false,
    errorbells=false,
    undodir='/Users/bigsexy/.vim/undodir',
    undofile=true,
    cmdheight=2,
    clipboard='unnamedplus',
    splitbelow=true,
    splitright=true,
    backup=false,
    writebackup=false,
    updatetime=300,
    signcolumn='yes',
    
  }
  
  vim.opt.shortmess:append("I") -- don't show default startup message
  
for option, value in pairs(options) do vim.opt[option] = value end


vim.g.jupytext_fmt = 'py'
vim.g.jupytext_style = 'hydrogen'
