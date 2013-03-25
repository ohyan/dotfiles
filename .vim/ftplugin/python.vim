" PEP 8 Indent rule
setl tabstop=8
setl softtabstop=4
setl shiftwidth=4
setl smarttab
setl expandtab
setl autoindent
setl nosmartindent
setl cindent
setl textwidth=80
setl colorcolumn=80

" Folding
setl foldmethod=indent
setl foldlevel=99

" Use virtualenv python
let g:pythonworkon = "System"
py << EOF
import sys, os.path
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
    # Save virtual environment name to VIM variable
    vim.command("let g:pythonworkon = '%s'" % os.path.basename(project_base_dir))

    # ref.vim
    vim.command("if !exists('g:ref_pydoc_cmd') | let g:ref_pydoc_cmd = 'python -m pydoc' | endif")
EOF
let &statusline="%F%m%r%h%w\ [%{&ff}][%{&fenc!=''?&fenc:&enc}][%Y][pos:%04l,%04v][rows:%L] %= [WORKON=%{pythonworkon}]"