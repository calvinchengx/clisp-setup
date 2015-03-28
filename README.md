# clisp-setup

Quick set-up of quicklisp for common lisp

## Usage

* `./setup.sh`
* When prompted, run `(quicklisp-quickstart:install)`
* And `(ql:add-to-init-file)` in our common lisp shell

## Vim SLIME with Steel Bank Common Lisp compiler

In vim,

```
:BundleInstall 'kovisoft/slimv'
```

In `.vimrc`, add in

```
augroup LISP
    autocmd!
    autocmd BufNewFile,BufRead *.jsx set filetype=lisp
    autocmd FileType let g:slimv_swank_cmd ='! xterm -e sbcl --load ~/utils/start-swank.lisp &' 
augroup EMD
```
