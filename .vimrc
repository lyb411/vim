" 插件管理
call pathogen#infect()

"vim常用配置
set nu
set fileencoding=utf-8
set encoding=utf-8
set encoding=utf-8
set termencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,latin1
set nobackup
set ts=4
set tabstop=4
set expandtab
set showmatch
set background=dark
set ruler
set formatoptions=c,q,r,t
set laststatus=2
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%] "显示文件名：总行数，总的字符数  
set ruler
set nobackup
set nowb
set noswapfile
set writebackup 
filetype plugin indent on
syntax on

"利用ctrl+n打开做成目录树,ctr+w+w左右目录与文件切换
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▶'
let g:NERDTreeDirArrowCollapsible = '▷'

"专门正对php配色主题,如果修改其他主题，直接修改名称即可
colorscheme candystripe


" 自动添加注释，按F4
map <F4> :call TitleDet()<cr>
function AddTitle()
    call append(0,"/**")
    call append(1,"* 说明")
    call append(2,"*")
    call append(3,"* @Author       liguibing")
    call append(4,"* @param        uid  用户id")
    call append(5,"* @param        uid  用户id")
    call append(6,"* @param        uid  用户id")
    call append(7,"*                   ")
    call append(8,"* @return       array 数组，每个元素为一个Key-Value数组，对应一个结果条目，其中Key为属性名，Value为属性值；失败返回array空数组")
    call append(9,"*/")
    echohl WarningMsg | echo "Successful in adding copyright." | echohl None
endf
 
function UpdateTitle()
     normal m'
     execute '/#\ Last modified/s@:.*$@\=strftime(":\t%Y-%m-%d %H:%M")@'
     normal ''
     normal mk
     execute '/# Filename/s@:.*$@\=":\t".expand("%:t")@'
     execute "noh"
     normal 'k
     echohl WarningMsg | echo "Successful in updating the copyright." | echohl None
endfunction

function TitleDet()
    let n=1
    while n < 10
        let line = getline(n)
        if line =~ '^\#\s*\S*Last\smodified\S*.*$'
            call UpdateTitle()
            return
        endif
        let n = n + 1
    endwhile
    call AddTitle()
endfunction




