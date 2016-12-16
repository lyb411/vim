##安装 Pathogen

Pathogen 是 VIM 的一个插件管理器，很多插件都支持它，所以不要怕麻烦，因为安装它的步骤非常简单。

前往 Pathogen 首页，找到下方的最新版 Package ZIP 包下载链接。
下载解压后你会得到一个名称为 autoload 的目录，将目录下的文件 pathogen.vim 拷贝至 ~/.vim/autoload/pathogen.vim。
编辑 ~/.vimrc 文件，在顶部加入行 call pathogen#infect()。

##安装 neocomplete 实时提示

如果想要实时的代码补全提示，可以通过安装 neocomplete 插件来实现，不过它对 VIM 的版本有比较高的要求，具体可以查看它的主页 github.com/Shougo/neocomplete.vim。

进入目录 ~/.vim/bundle 后执行命令 git clone https://github.com/Shougo/neocomplete.vim.git。
编辑 ~/.vimrc 文件，加入行 let g:neocomplete#enable_at_startup = 1。这样就能在启动 VIM 时自动开启实时补全功能。


###安装 tagbar

这个插件其实是可选的，但是看起来很牛逼的样子，于是我也琢磨了下。

首先果断的你需要先安装 ctags，我是 Mac 所以用的 brew install ctags 就搞定了。
然后 go get -u github.com/jstemmer/gotags 安装 Go 语言的相关解析器。
接着在你的 ~/.vimrc 文件加入以下内容：

```
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
```
是时候装 tagbar 插件了，和安装 VIM-GO 一样，首先进入 ~/.vim/bundle 目录。然后执行 git clone https://github.com/majutsushi/tagbar.git。
编辑 ~/.vimrc 文件，加入行 nmap <F8> :TagbarToggle<CR>。这是个快捷键映射，你可以把 F8 换成任意的。

##安装目录浏览器 nerdtree

俗话说得好，不能查看目录的编辑器不是一个好的 IDE！为了让我们的 VIM 看起来更加霸气，是绝对不能错过 nerdtree 这款插件的。

进入目录 ~/.vim/bundle 后执行命令 git clone https://github.com/scrooloose/nerdtree.git。
编辑 ~/.vimrc 文件，加入行 map <C-n> :NERDTreeToggle<CR>。如此一来，当你需要浏览目录的时候，就可以使用快捷键 <Ctrl+n> 来调出浏览窗口了。










