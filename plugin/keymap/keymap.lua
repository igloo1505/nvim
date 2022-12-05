let mapleader = " "
nnoremap <leader>ps : lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<Esc><CR>
nnoremap <leader>fkm : lua require('telescope.builtin').keymaps()<CR>
nnoremap <leader>ft : NERDTreeToggle<CR>
nnoremap <leader>ts : Telescope<CR>
nnoremap <leader>bn : bn<CR>
nnoremap <leader>bp : np<Cr>
inoremap jk <Esc>
vnoremap jk <Esc>

inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))

nnoremap <leader>fbm : :NERDTreeFromBookmark <CR>
nnoremap <leader>bm :NERDTree-B<Space>
nnoremap <leader><tab> : :tabN<CR>
nnoremap <leader><S-tab> : :tabn<CR>
nnoremap <leader>e : Explore<CR>

nnoremap <A-j> <A-h>
inoremap <A-k> <Esc>:m .-3<CR>==gi
vnoremap <A-k> :m '<-2<CR>gv=gv
vnoremap <A-j> :m '>+1<CR>gv=gv


nnoremap <A-k> <C-b>
nnoremap <A-y> <C-f>
nnoremap <A-u> <C-b>




