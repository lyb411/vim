###vim常用配置
```
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
```

###vim插件包安装(Pathogen 是 VIM 的一个插件管理器)
```
下面凡是涉及目录不存在的都要自己创建
1、前往 Pathogen 首页，找到下方的最新版 Package ZIP 包下载链接；
2、下载解压后你会得到一个名称为 autoload 的目录，将目录下的文件 pathogen.vim 拷贝至 ~/.vim/autoload/pathogen.vim；
3、编辑 ~/.vimrc 文件，在顶部加入行 call pathogen#infect()
```

###php配色插件安装：

``` 
cd ~/.vim/colors
wget https://github.com/modess/vim-phpcolors.git
cp vim-phpcolors/colors/candystripe.vim ~/.vim/colors
vim ~/.vimrc  增加如下代码
"专门正对php配色主题
colorscheme candystripe

```





一些常用插件安装参考： https://github.com/Unknwon/wuwen.org/issues/7
