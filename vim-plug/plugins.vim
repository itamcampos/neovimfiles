" ============================================================================
"   Instalação automática do vim-plug e configuração de plugins
"   Autor: Itamar Campos
"   GitLab: https://gitlab.com/itamcampos
"   CodeBerg: https://codeberg.org/itamcampos
"   GitHub: https://github.com/itamcampos
"   Descrição: Este script verifica a presença do gerenciador de plugins
"              vim-plug e, caso não esteja instalado, realiza a instalação
"              automática. Em seguida, os plugins especificados são
"              configurados e carregados.
"   Criado em: 9 de agosto de 2024
"   Última modificação: 28 de agosto de 2024 (esta data pode ser precisa)
" ============================================================================

" Instalação automática do vim-plug, caso não esteja presente.
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  " Se necessário, as linhas abaixo podem ser descomentadas para instalar os
  " plugins automaticamente na primeira vez em que o Neovim for aberto.
  " autocmd VimEnter * PlugInstall
  " autocmd VimEnter * PlugInstall | source
endif

" Inicia a configuração dos plugins utilizando o vim-plug.
call plug#begin()

" Pluginsque serão instalados e gerenciados pelo vim-plug.
Plug 'navarasu/onedark.nvim'
Plug 'lambdalisue/fern.vim'
Plug 'antoinemadec/FixCursorHold.nvim'

" Finaliza a configuração dos plugins.
call plug#end()
