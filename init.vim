" ============================================================================
"   Arquivo de configuração do Neovim - init.vim
"   Autor: Itamar Campos
"   GitLab: https://gitlab.com/itamcampos
"   CodeBerg: https://codeberg.org/itamcampos
"   GitHub: https://github.com/itamcampos
"   Descrição: Este arquivo contém as configurações personalizadas para o
"              Neovim. O objetivo é adaptar a aparência e o comportamento do
"              editor de texto para aprimorar a experiência do usuário.
"   Criado em: 9 de agosto de 2024
"   Última modificação: 28 de agosto de 2024 (esta data pode ser precisa)
" ============================================================================

" Habilita o suporte a cores verdadeiras no terminal.
" Esta configuração permite que o Neovim utilize uma paleta de cores mais rica
" em terminais que oferecem suporte a cores de 24 bits.
set termguicolors

" Ativa o destaque de sintaxe no Neovim.
" Este comando aplica automaticamente cores ao código, com base na linguagem
" de programação, facilitando a leitura e o desenvolvimento.
syntax on

" Exibe a numeração das linhas na margem esquerda.
" Esta opção é útil para a navegação no código, depuração e referência
" a linhas específicas.
set number

" Destaca a linha onde o cursor está localizado.
" Esta configuração auxilia na rápida localização do cursor no código.
set cursorline

" Carrega uma configuração externa de plugins.
" Este comando faz referência ao arquivo 'plugins.vim', que contém
" as configurações dos plugins gerenciados pelo vim-plug.
source ~/.config/nvim/vim-plug/plugins.vim

" Restaura o comportamento padrão do cursor ao encerrar o Neovim.
" Este bloco de comandos assegura que o cursor não permaneça no formato
" modificado (barra ou bloco) após o fechamento do editor, restaurando-o
" para um estilo vertical sem piscamento ao sair do Neovim.
" augroup RestoreCursorShape
"   autocmd!
"   autocmd VimLeave * set guicursor=a:ver25-blinkon0 | silent !echo -ne "\e[ q"
" augroup END

" Define o formato e o comportamento do cursor ao deixar o Neovim ou suspender a sessão.
" Este comando configura o cursor para um estilo de bloco que não pisca quando o Neovim
" é encerrado (VimLeave) ou quando a sessão é suspensa (VimSuspend).
"
" Parâmetro:
"   - `a:ver90:block-blinkon0`:
"     - `a:`: Aplica a configuração a todos os modos de inserção e comando.
"     - `ver90`: Define o cursor como uma barra vertical com 90% da altura do texto.
"     - `block-blinkon0`: Define o cursor como um bloco que não pisca.
"
" Isso assegura que, ao sair do Neovim ou suspender a sessão, o cursor seja exibido
" como um bloco fixo, proporcionando uma aparência consistente e estática do cursor
" durante esses eventos.
au VimLeave,VimSuspend * set guicursor=a:ver90:block-blinkon0

" Configurações do tema OneDark.
" Define o estilo do tema como 'darker', que proporciona um contraste mais
" acentuado no esquema de cores. Esta configuração é recomendada para
" melhorar a visibilidade do código em ambientes de pouca iluminação.
let g:onedark_config = {
    \ 'style': 'darker',
\}

" in millisecond, used for both CursorHold and CursorHoldI,
" use updatetime instead if not defined
let g:cursorhold_updatetime = 100

" Aplica o esquema de cores OneDark conforme a configuração especificada.
colorscheme onedark
