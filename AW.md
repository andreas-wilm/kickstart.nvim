Remember this comes from the kickstarter repo

# Learn

- Train with https://github.com/ThePrimeagen/vim-be-good
- :Tutor tutor


# TODO

- disable page up and down
- splits/wincmd like <ctrl>w v|s and <ctrl>w <ctrl>o
- consider telescope file browser https://github.com/nvim-telescope/telescope-file-browser.nvim
- Explore treesitter
- Different windows/buffers
- explore quickfix
- explore undotree

# Stuff

:e $MYVIMRC | edit config
u | undo
i | insert before cursor
a | insert after cursor
:help or :h | help
:h keyword | help for keyword
<leader>sh | shortcut search help
:Lazy | see plugin status
cw | change word (everything up from cursor)
ciw | change inside word
r<CHAR> | replace character under cursor with CHAR
C-6 | go back to previous file (<CTRL>^)
S-k | display type definition
v | visual mode
V | visual line mode
vi" | select everything within quotes
d | delete
dap | delete around paragraph
y | yank
yap | yank around paragraph
p | paste
C-p | complete word under cursor
gU<motion> or gu<motion> | to change everything in motin to Upper or lower case

Jumps
C-o and C-i | go through jumplist, i.e previous cursor positions
C-t jump in tag stack
Both work after e.g. <leader>gd
gc | comment visual region

## Custom keybindings

- gr | go to / find references
- gd | go to / find definition
- <leader>sf | search files
- <leader>sk | search keymap
- <leader>sh | search help

Completion
- C-y | accept
- C-n/p | next/prev item

## Motions

hjkl | navigate
w | forward word
e | forward word (end of word)
b | backward word
0 | beginning of line
^ | first non-blank character of line
$ | end of line
% | move to matching parenthesis or keyword
{ and } | move by paragraph (non white space segment)
C-d and C-u | to move half page down or up
TODO recommended: remap to <C-d>zz for centering
:<NO> | move to line number NO



## Search

/ | search downwards
* | search downwards for word under cursor (<ESC> to stop)
? | search backwards
# | search upwards with word under cursor
n | next results
N | prev results
TODO recommended: remap to nzzzv for centering
f<CHAR> | go to next occurence of CHAR
F<CHAR> | go to prev occurence of CHAR
;, | next/previous occurence
same for t but unTil character

## Misc

- leader key: namespace for custom keymaps (think shortcut)
- vim.g are global options
- vim.opt is used to set options from within lua/config
- Live testing of options: :lua vim.opt.number = false
- Diagnostics are for LSP
- Lazy is a package manager
- Telescope!
- :Mason for LSP
  - X to uninstall




# Log

## Python

Installed NPM with brew so that I could install pyright with Mason
