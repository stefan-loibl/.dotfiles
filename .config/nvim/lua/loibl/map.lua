-- make Y behave like other capital letters
vim.keymap.set("n", "Y", "y$")

-- Keeping it centered
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "J", "mzJ`z")

-- use <esc> to exit insert mode in terminal
vim.keymap.set("t", "<leader><esc>", "<c-\\><c-n>")

-- easier Moving between splits
vim.keymap.set("n", "<A-h>", "<C-w>h")
vim.keymap.set("n", "<A-j>", "<C-w>j")
vim.keymap.set("n", "<A-k>", "<C-w>k")
vim.keymap.set("n", "<A-l>", "<C-w>l")
vim.keymap.set("t", "<A-h>", "<C-\\><C-n><C-w>h")
vim.keymap.set("t", "<A-j>", "<C-\\><C-n><C-w>j")
vim.keymap.set("t", "<A-k>", "<C-\\><C-n><C-w>k")
vim.keymap.set("t", "<A-l>", "<C-\\><C-n><C-w>l")

-- remove whitespace
vim.keymap.set("n", "<leader>rmw", ":%s/\\s\\+$//<CR>")

-- save
vim.keymap.set("n", "<C-s>", ":w<CR>")
vim.keymap.set("n", "<C-a>", ":wa<CR>")

-- noremap <Up> <Nop>
-- noremap <Down> <Nop>
-- noremap <Left> <Nop>
-- noremap <Right> <Nop>
-- 
-- " Undo break points
-- inoremap , ,<c-g>u
-- inoremap . .<c-g>u
-- inoremap ! !<c-g>u
-- inoremap ? ?<c-g>u
-- 
-- " Jumplist mutations
-- nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
-- nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'
-- 
-- " Move line(s) up and down
-- "inoremap <A-j> <Esc>:m .+1<CR>==gi
-- "inoremap <A-k> <Esc>:m .-2<CR>==gi
-- vnoremap <A-j> :m '>+1<CR>gv=gv
-- vnoremap <A-k> :m '<-2<CR>gv=gv
-- 
-- " Cycle through buffers
-- nnoremap <leader>j :bnext<CR>
-- nnoremap <leader>k :bprevious<CR>
-- 
-- " Switch between tabs
-- nnoremap <Right> gt
-- nnoremap <Left>  gT
-- 
-- " Make windows to be basically the same size
-- nnoremap <leader>= <C-w>=
-- 
-- " Sizing window horizontally
-- nnoremap <A-[> <C-w>+
-- nnoremap <A-{> <C-w>5+
-- nnoremap <A-]> <C-w>-
-- nnoremap <A-}> <C-w>5-
-- nnoremap <A-o> <C-w><
-- nnoremap <A-O> <C-w>5<
-- nnoremap <A-p> <C-w>>
-- nnoremap <A-P> <C-w>5>
-- 
-- " Move easily to the next error
-- nnoremap <leader>l :lnext<CR>
-- nnoremap <leader>h :lprevious<CR>
-- 
-- " git
-- nmap <leader>gh :diffget //3<CR>
-- nmap <leader>gu :diffget //2<CR>
-- nmap <leader>gs :G<CR>
