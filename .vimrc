" シンタックスの表示
syntax on

" jjでESC
inoremap <silent> jj <ESC>

" 複数行が折りたたまれているときもj, kで表示上の行ごとで移動
nnoremap j gj
nnoremap k gk

" 閉じカッコの自動挿入
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>

" 行番号の表示
set number

" 特殊な全角文字の表示を2文字分にする
set ambiwidth=double

" markdownでのItalic制御
autocmd! FileType markdown hi! def link markdownItalic Normal

" タブの表示上のスペース数
set tabstop=4

" タブキー押下時に挿入される文字幅
set softtabstop=4

" タブをスペースとして展開
set expandtab

" 自動インデントに使われる空白の数
set shiftwidth=4

" インデント類
set autoindent
set smartindent
autocmd BufNewFile,BufRead *.cpp setlocal cindent
autocmd BufNewFile,BufRead *.py  setlocal nosmartindent
autocmd BufNewFile,BufRead *.md  setlocal nosmartindent

" backspaceで消せるものの設定
set backspace=indent,eol,start

" クリップボードの共有
set clipboard=unnamed

" マウスを利用可能に
set mouse=a

" カラースキーム
colorscheme desert

" テンプレート
autocmd BufNewFile *.py :0r ~/.vim/template/py.txt

" ビープ音を削除
set visualbell t_vb=
