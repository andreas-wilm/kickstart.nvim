# TODO


- explore undotree
- [modularize init.vim](https://www.reddit.com/r/neovim/comments/19dkno2/i_need_help_modularizing_my_kickstartnvim/)
- override filetype for v from verilog to v (:set ft=v)
- i" etc searches on entire line?
- flash docu incl remote actions

# Learn

- :help or :h | helpV
- :h keyword | help for keyword
- :h key | help for key
- <leader>sh | shortcut search help (custom)

# Notes

- telescope <leader>s and flash search s clash. Type fast for telescope use
- markdown headers can be jumped as usual with [[ and ]]

# Stuff

- S | delete entire line and change to insert mode (overwritten by Flash)
- :e $MYVIMRC | edit config
- u | undo
- i | insert before cursor
- a | insert after cursor
- cw | change word (everything up from cursor)
- ciw | change inside word
- C-6 | go back to previous file (<CTRL>^)
- S-k | display type definition
- . | repeat last change
- cc | delete line and go into insert mode
- C | delete until end of line and go into insert mode
- d | delete
- dap | delete around paragraph
- y | yank
- yap | yank around paragraph
- p | paste
- gU<motion> or gu<motion> | to change everything in motin to Upper or lower case
- ~ | toggle case. Also g~motion like g~w or g~i(
- r<CHAR> | replace character under cursor with CHAR
- R | replace mode, i.e. keep replacing
- :s/thee/the/g | replace thee for the in line (g for all occurences per line)
- :%s/thee/the/gc | replace thee for the in file and ask for conformation (c)
- g/pattern/d | delete all lines with pattern
- v/pattern/d | delete all lines without pattern
- :!cmd | to run cmd (optionally works on and replaces selection)
- :r !cmd | run cmd and insert output
- :r FILE | retrieves/inserts files
- zz | center current line on screen
- gw{motion}  | reformat. e.g. } for paragraph. See also gq. gq might have trouble with LSP
- x or X | delete character forward / backward
- df<char> or dF<char> | delete forward/backward until char
  - same for c or y
  - use t to delete/change/yank until rather than including
  - can also used with count before f or t, e.g. y2t,
- d/<word> and y/word | delete or yank until word. line wraps! considering using v/<word>
- > or < or = | indent, deindent or autoindent (works with motions)
- gg=G | reindent whole file
- gcc | un/comment visual region
- gc | un/comment visual region
- ctrl-o | in insert mode allows to run one normal mode command

# Marks: store positions in a file

- ma | mark position into register a
- 'a | move to the line with marked position with a
- `a | return to the marked position with a
- :marks | display marks


# Jumps

- `C-o` and `C-i` | go through jumplist, i.e previous cursor positions
- `C-t` jump in tag stack
- Both work after e.g. `<leader>gd`
- `[[` and `]]` | jump to beginning of next/last function
- `][` and `[]` | jump to next/previous function end
- `[[V][` select function from anywhere within function
- `[m` or `[M` | jump to start of next/previous function start

# Macros (from https://wicowen.github.io/2016-0420-1041-Vim-marco-cheat-sheet/)

- qr : start recording to register 'r'
- q : stop recording
- @r : execute your 'r' macro
- 10@r repeat 10 time 'r' macro
- @@ : execute macro again

# Registers: store and retrieve text

- :reg | list all registers
- "<name><cmd> | run command cmd on register name, e.g. "ay and "ap
- " in insert mode will bring up register preview
- ctrl-r in insert mode can paste registers (and brings up review)

Special registers:

- "_ | forget. Example "_dd delete a line without sticking it in the registers
- ". | last inserted text
- "" | unnamed (default)
- "0 | most recent yanked
- "1 | most recent deleted
- "2 | previous deletion etc.

# visual

- v | visual mode
- V | visual line mode
- o | jump between visually selected area start/end, e.g. to prepend/append to the selection
- gv | reselect previously visually selected area
- C-v | rectangle selection (works with motion)
- C-a | increment number under cursor or first thing to increment in selection
- C-x | decrement number under cursor or first thing to decrement in selection
- vi" | select everything within quotes

# Splits/Windows

- :sp filename  | Open a file in a new buffer and split window
- :vsplit | vertical split

- C-ws | Split windows
- C-wv | Split windows vertically
- C-wc | Close split
- C-wq | Close split and quit file

- C-\[hjkl\] | Move between windows
- - C-ww     | Cycle between windows

# buffers

- telescope: leader leader
- vanilla
- :bnext
- :bprevious
- :bd | delete buffer (don't quit vim)

# Insert mode special keys

- C-o | execute once in normal mode
- C-w | delete word backwards
- C-p | autocompletion (see below)
- C-u | delete current line
- :help ins-special-keys
- C-c | go to normal mode (like ESC)
- C-h | delete inserted character, but see https://github.com/neovim/neovim/issues/2048#issuecomment-78045837

# Completion

- C-p | completion (in insert mode)
- C-n/p | next/prev item
- C-y | accept


# Custom keybindings

- gr | go to / find references
- gd | go to / find definition

- <leader>tt | Toggle floating terminal
- <esc><esc> | Escape terminal mode (default is C-\ C-n)

Telescope

- <leader>sf | search files
- <leader>s. | search recent files
- <leader>sk | search keymap
- <leader>sh | search help
- <leader><leader>| search buffers
- <leader>fb | file browser
  - C-e | home
  - <bs> or C-g | parent dir
  - C-f | toggle browser

Mini

- Add surrounding with sa (in visual mode or on motion).
- Delete surrounding with sd.
- Replace surrounding with sr


## Motions

- hjkl | navigate
- w | forward word
- e | forward word (end of word)
- b | backward word
- 0 | beginning of line
- ^ | first non-blank character of line
- $ | end of line
- % | move to matching parenthesis or keyword
- { and } | move by paragraph (non white space segment)
- C-d and C-u | to move half page down or up
- C-f and C-b | to move full page down or up
- C-e and C-y | to move one line down or up
- G | move to bottom
- gg | move to start
- - | beginning of one line up
- + | beginning of one line down

- TODO recommended: remap to <C-d>zz for centering
- :<NO> | move to line number NO



## Search

- / | search downwards
- * | search downwards for word under cursor (<ESC> to stop)
- ? | search backwards
- # | search upwards with word under cursor
- n | next results
- N | prev results
- C-o | to go back where you came from
- TODO recommended: remap to nzzzv for centering
- f<CHAR> | go to next occurence of CHAR
- F<CHAR> | go to prev occurence of CHAR
- ;, | next/previous occurence
- same for t but unTil character

## Misc

- leader key: namespace for custom keymaps (think shortcut)
- vim.g are global options
- vim.opt is used to set options from within lua/config
- Live testing of options: :lua vim.opt.number = false
- Diagnostics are for LSP
- :LspInfo to get more Lsp info
- Lazy is a package manager
- Telescope!
- :Mason for LSP
  - X to uninstall
- :Lazy | see plugin status
- C-g | show location in file and file status
- gx | open link under cursor
- gf | open file under cursor
- C-a or C-x | increment or decrement selected integer/s



# Log

## Python

Installed NPM with brew so that I could install pyright with Mason
Debugging of pyright: ~/.local/share/nvim/mason/bin/pyright-langserver --stdio
On Ubuntu 22.04 I couldn't pyright to work because of node problems. Using python-lsp-server instead


