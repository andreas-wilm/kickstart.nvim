# TODO

- consider telescope file browser https://github.com/nvim-telescope/telescope-file-browser.nvim
- Explore treesitter
- Different windows/buffers/splits
- explore quickfix
- explore undotree

# Learn

- Train with https://github.com/ThePrimeagen/vim-be-good
:Tutor tutor
:help or :h | helpV
:h keyword | help for keyword
<leader>sh | shortcut search help (custom)

# Stuff

S | delete entire line and change to insert mode
:e $MYVIMRC | edit config
u | undo
i | insert before cursor
a | insert after cursor
cw | change word (everything up from cursor)
ciw | change inside word
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
~ | toggle case
r<CHAR> | replace character under cursor with CHAR
R | replace mode, i.e. keep replacing
:s/thee/the/g | replace thee for the in line (g for all occurences per line)
:%s/thee/the/gc | replace thee for the in file and ask for conformation (c)
:!cmd | to run cmd
zz | center current line on screen
gw{motion}  | reformat. e.g. } for paragraph. See also gq
x or X | delete character forward / backward

Jumps
C-o and C-i | go through jumplist, i.e previous cursor positions
C-t jump in tag stack
Both work after e.g. <leader>gd
gc | comment visual region
[m or [M | jump to function start or end (works in Python at least)

Insert mode special keys
C-o | execute once in normal mode
C-w | delete word backwards
C-p | autocompletion
C-u | delete current line
:help ins-special-keys
C-c | go to normal mode (like ESC)
C-h | delete inserted character, but see https://github.com/neovim/neovim/issues/2048#issuecomment-78045837

## Custom keybindings

- gr | go to / find references
- gd | go to / find definition
Telescope
- <leader>sf | search files
- <leader>sk | search keymap
- <leader>sh | search help
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
C-f and C-b | to move full page down or up
C-e and C-y | to move one line down or up
G | move to bottom
gg | move to start

TODO recommended: remap to <C-d>zz for centering
:<NO> | move to line number NO



## Search

/ | search downwards
* | search downwards for word under cursor (<ESC> to stop)
? | search backwards
# | search upwards with word under cursor
n | next results
N | prev results
C-o | to go back where you came from
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
:Lazy | see plugin status




# Log

## Python

Installed NPM with brew so that I could install pyright with Mason
Debugging of pyright: ~/.local/share/nvim/mason/bin/pyright-langserver --stdio
On Ubuntu 22.04 I couldn't pyright to work because of node problems. Using python-lsp-server instead

