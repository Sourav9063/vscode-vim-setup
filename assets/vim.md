### Acronym
* C-a ==> CTRL-a

### Modes in VIM
* __Normal mode(n)__   When we open mode, the default mode is normal
* __Insert mode(i)__   When we want to insert some text, we press i, a or A etc to go in insert mode
* __Command mode(c)__  When we type colon(:) from normal mode, we enters command mode
* __Visual mode(v)__   Using v or V or C-i

### Start VIM
```bash
vim filename         # Open a file in VIM
vim -p *.c           # Open files in separate tabs, use :tabn and :tabp to switch between tabs
vim -d file1 file2   # Open files in diff mode
vim filename +       # Open file with cursor at end
vim filename +n      # Open file with cursor at line n

vim -o *.c           # Open matching files horizontally splitted
vim -O *.c           # Open matching files vertically splitted

# Use C-w then [h, j, k, l] to switch between vim splits

vim -u NOVIMRC <filename>             # Open file in vanilla vim, without using .vimrc file
vim --noplugin <filename>             # Open file without using any plugin
vim --noplugin -u NOVIMRC <filename>  # Above 2 commands combined
```

### Save file
```vim
:w[rite]    " Write unsaved changes to file
:w!         " Save file forcefully
:wa[ll]     " Save all files
:wa!        " Save all files forcefully

" Forceful is required when we opened a file which is readonly like already opened by someone
```

### Exiting VIM
```vim
:q[uit]    " Exit from vim editor
:wq        " Save and exit
:q!        " Forceful exit from vim, without saving changes
:wq!       " Forceful save and exit from vim
:qa[ll]    " Quit all opened files like when we open vim using 'vim *.c'
:wqa       " Save all opened files and exit
:x         " Save and exit, same as :wq
:xa        " Save all opened files and exit, same as :wqa
:exit      " Save and exit, same as :x or :wq
:exit!     " Forceful save and exit from vim, same as :xa! or :wq!

" Any command postfixed with ! means forceful, other combinations are :x! or :xa! or :wqa!
```

### Text blocks in VIM
* __Word(w)__        Separated by punctuations, like 'some.string' has 3 words
* __Bigger Word(W)__ Separated by space, newline etc, like 'some.string' is single bigger word
* __Sentence(s)__    A sentence is defined as ending at a '.', '!' or '?' followed by either the end of a line, or by a space or tab.
* __Paragraph(p)__   A paragraph begins after each empty line

### Navigation
```vim
h    " Move cursor left by one character
j    " Move cursor down by one character
k    " Move cursor up by one character
l    " Move cursor right by one character
3j   " Move 3(or n) lines down, similar for other
```

```vim
w    " Move cursor at starting of next word
W    " Move cursor at starting of next bigger word
e    " Move cursor at the end of next word
b    " Move cursor at starting of previous word
B    " Move cursor at starting of previous bigger word
ge   " Move cursor at the end of the previous word
3w   " Move cursor at starting of 3(or n) words ahead, similar for other
```

```vim
0    " Move to beginning of line
^    " Move to first character(non space) of line
$    " Move to end of line
g_   " Move to last character(non space) of line
```

```vim
(    " Jump to previous sentence
)    " Jump to next sentence
{    " Jump to previous paragraph
}    " Jump to next paragraph
%    " Jump to open close blocks like /* .. */, [], {}, ()
```

```vim
H    " High, Move cursor at the top of file in current view
M    " Mid, Move cursor at center of file in current view
L    " Low, Move cursor to last in current view
```

```vim
C-b    " Page up
C-f    " Page down
5C-b   " Move 5(or n) pages up, same for down

50gg   " Move to 50th(or nth) line
50G    " Move to 50th(or nth) line
```

```vim
zt     " Move current line to top of screen
zz     " Move current line to centre of screen
zb     " Move current line to bottom of screen
Lzz    " Bring bottom line to the middle of the screen
Hzz    " Bring top line to the middle of the screen
Lzt    " Bring bottom line to top of screen
...
```

`zz` or `zt` is useful when we search for some text and it comes in bottom of screen and we want to see lines below it
```vim
/some-text zz    " Bring line having searched text to middle of screen
```

```vim
C-e     " Move/scroll screen up without moving cursor position
C-y     " Move/scroll screen down without moving cursor position
5C-e    " Move screen up by 5 lines without moving cursor position
5C-e    " Move screen down by 5 lines without moving cursor position
C-d     " Move screen down by half screen without moving cursor
C-u     " Move screen up by half screen without moving cursor
5%      " Move to a line by 5% of file like in a file having 500 lines, 5% will move to 25th line
```

### Start editing
Below commands can be used to move from `normal` mode to `insert` mode
```vim
i    " Insert at current cursor position
I    " Insert at beginning of line
a    " Insert just after current cursor position
A    " Insert at end of current line
o    " Insert newline below current line
O    " Insert newline above current line
```

```vim
s     " Delete current character and start inserting
S     " Delete current line and start inserting
cc    " Delete current line and start inserting, same as S
cw    " Delete current word and start inserting
C     " Delete line from current cursor position to end of line and start inserting
```

Apart from above, `c` can be followed with various other motions like `ciw` to change text, explained later!

### Yank, delete, change and visual
```vim
y{motion}    " Yank block selected by motion
d{motion}    " Delete block selected by motion
c{motion}    " Change block selected by motion
v{motion}    " Visually select block selected by motion
```

#### Yank text
```vim
yy     " Yank current line
yw     " Yank current word
y5w    " Yank next 5(or n) words
yW     " Yank current bigger word
yb     " Yank previous word
y5b    " Yank previous 5(or n) words
yB     " Yank previous bigger word
yj     " Yank current and next line
y5j    " Yank current and next 5(or n) lines
yk     " Yank current and previous line
y5k    " Yank current and previous 5(or n) lines

y0     " Yank from current cursor position to begining of line
y$     " Yank from current cursor position to end of line
y^     " Yank from current cursor position to first char(non space) of line
yg_    " Yank from current cursor position to last char(non space) of line
...
```

#### Delete
```vim
dd     " Delete current line
D      " Delete from current cursor position till end of line
dw     " Delete current word
db     " Delete previous word
dj     " Delete current and next line
d5j    " Delete current and next 5(or n) lines
dk     " Delete current previous line
d5k    " Delete current and previous 5(or n) lines
...
```

```vim
ddp    " Swap current line and next line
```

#### Change text
```vim
cc     " Change current line
C      " Change from cursor position to end of line
cw     " Change current word
c5w    " Change next 5(or n) words
...
```
#### Visual selection
```vim
v    " Start visual mode, use other navigation commands to select more
V    " Visually select current line
v$   " Visually select from current cursor position to end of line
...
```

### Pasting text
Text in default vim register(using `yy`, `cw`, `dw`...) can be pasted using below 2 commands
```vim
p    " Paste after current cursor position
P    " Paste before current cursor position
```

### Undo and redo
In `Normal mode` we can perform undo and redo operations
```vim
u      " Undo
4u     " Undo the last four (or n) changes
C-r    " Redo
C-r    " Redo last four (or n) changes
```
__Note__: Undo and redo can also be done in command mode using `:undo` and `:redo` but Normal mode one is more handy.

### Text formatting
```vim
>>     " Right indent current line
>5j    " Right indent current and next 5(or n) lines
>5k    " Right indent current and previous 5(or n) lines
<<     " Left indent current line
<5j    " Left indent current and next 5(or n) lines
<5k    " Left indent current and previous 5(or n) lines
```

```vim
==     " Auto align current line
=5j    " Auto align current line and 5(or n) next lines, or use '5=='
=5k    " Auto align current line and 5(or n) previous lines
```

### Text object selection
#### Motions
Below commands can be used to select text/blocks/objects when prefixed with
commands like `y`, `c`, `d`, `v`...
```vim
iw    " Inner word
iW    " Inner bigger word
it    " Inner tag like <head>....</head>
i”    " Inner double quoted contents
i'    " Inner single quoted contents
i`    " Inner backticked content
is    " Inner sentence
ip    " Inner paragraph
ib    " Inner contents of block - enclosed with (...)
iB    " Inner contents of bigger block - enclosed with {...}
i(    " Inner contents of round brackets
i)    " Inner contents of round brackets
i{    " Inner contents of curly brackets
i}    " Inner contents of curly brackets
...

" This can be used with any other block also like [], <>...
```

If prefix `i` above is replaced with `a`, it will include enclosing space/block also
```vim
aw    " A word, include trailing space with word
aW    " A bigger word
at    " A tag like <head>....</head>
a”    " A double quoted, including double quotes
a'    " A single quoted
a`    " A backticked block
as    " A sentence
ap    " A paragraph
ab    " A block - '(...)'
aB    " A bigger block - '{...}'
a(    " A block of round brackets, including braces
a)    " A block of round brackets
a{    " A block of curly brackets
a}    " A block of curly brackets
...

" This can be used with any other blocks also like [], <>...
```

Above motions can be used with `y`, `c`, `d` or `v`. First char is operation/command followed by motion

#### Change text
Any command prefixed with `c` will switch to insert mode after the operation
```vim
ciw    " Change inner word
ciW    " Change inner bigger word
cit    " Change inner contents of tag
ci"    " Change inner contents enclosed within double quotes
cib    " Change inner contents of (...) block
ci{    " Change inner contents of {...} block, same as `ci}`
ci`    " Change inner contents of `...`
...

caB    " Change a bigger block `{...}` including braces
ca}    " Change a block `{...}`, same as `ca}`
ca>    " Change a tag, same as `ca<`
...

" c is operation and iw, iW, it... are motions in all above commands
" Text deleted using `c` command can be pasted at some other location using paste command(p/P)
```

#### Yank text
```vim
yiw    " Yank inner word
yiW    " Yank inner bigger word
yit    " Yank inner tag
yi"    " Yank inner double quoted text
yi'    " Yank inner single quoted text
yis    " Yank inner sentence
yip    " Yank inner paragraph
yi(    " Yank inner text inside () block, same as 'yi)'
yi[    " Yank inner text inside [] block, same as 'yi]'
...

yaw    " Yank a word including trailing spaces
ya)    " Yank a block including round braces, same as 'ya('
...

" y is operation and iw, iW, it... are motions in all above commands
" After yanking relevant text, it can be pasted at some other location using paste command(p/P)
```

#### Delete text
```vim
diW    " Delete inner bigger word
di'    " Delete inner text enclosed within single quotes
di]    " Delete inner text within [...], same as 'di['
dip    " Delete inner paragraph
...

das    " Delete a sentence
daB    " Delete a bigger block '{...}'
...

" After deleting relevant text, it can be pasted at some other location using paste command(p/P)
```

#### Visually select text
```vim
viw    " Visually select inner word
vi"    " Visually select text within double quotes
vi}    " Visually select contents enclosed with {...}
...

va}    " Visually select a block '{...}'
vap    " Visually select a paragraph
...
```

### Search and edit
#### Search
```vim
f<char>    " Find next `char` on current line and move cursor on it
t<char>    " Find next `char` on current line and move cursor one before it
F<char>    " Find previous `char` on current line and move cursor on it
T<char>    " Find previous `char` on current line and move cursor one before it

;          " Repeat f/t or F/T command to find next or previous occurrence respectively
,          " Repeat f/t or F/T command to find previous or next occurrence respectively
```
Above commands(f/t/F/T) searches and operates(check below section) on current line

```vim
/<pattern>    " Search for next occurrence of `pattern` in file
?<pattern>    " Search for previous occurrence of `pattern` in file
```
Above commands(/ and ?) searches and operates(check below section) across file

#### Delete
```vim
df<char>    " Delete till next occurrence of `char`(included)
dt<char>    " Delete till next occurrence of `char`(excluded)
dF<char>    " Delete till previous occurrence of `char`(included)
dT<char>    " Delete till previous occurrence of `char`(excluded)

d/<pattern>  " Delete till next occurrence of `pattern` in file
d?<pattern>  " Delete till previous occurrence of `pattern` in file
```

#### Change
Delete and start inserting
```vim
cf<char>    " Change till next occurrence of `char`(included)
ct<char>    " Change till next occurrence of `char`(excluded)
cF<char>    " Change till previous occurrence of `char`(included)
cT<char>    " Change till previous occurrence of `char`(excluded)

c/<pattern>  " Change till next occurrence of `pattern` in file
c?<pattern>  " Change till previous occurrence of `pattern` in file
```

#### Yank
```vim
cf<char>    " Yank till next occurrence of `char`(included)
ct<char>    " Yank till next occurrence of `char`(excluded)
cF<char>    " Yank till previous occurrence of `char`(included)
cT<char>    " Yank till previous occurrence of `char`(excluded)

c/<pattern>  " Yank till next occurrence of `pattern` in file
c?<pattern>  " Yank till previous occurrence of `pattern` in file
```

#### Visually select
Same as above, `y` gets replaced with `v`


### Alter numbers in VIM
```vim
C-a    " Increment current number by 1
C-x    " Decrement current number by 1
5C-a   " Increment current number by 5(or n)
5C-x   " Decrement current number by 5(or n)
```

By default increment and decrement works only for dec, hex, oct and bin.
Append alpha to `nrformats` to work with alphabets also
```vim
:set nrformats+=alpha    " Increment alphabets also
:set nrformats?          " View list of supported options
```

### Search, replace and delete in command mode
```vim
/pattern       " Search next occurrence of 'pattern' in file
/red\|green    " Search multiple strings at the same time, this selects red and green

" Other regex are also supported in search
```

```vim
:g/pattern/d              " Delete all lines having 'pattern'
:v/pattern/d              " Delete all lines **not** having 'pattern' or use :g!/pattern/d
:v/error\|warn\|fail/d    " Delete all lines **not** having error, warn or fail
:g/^\s*$/d                " Delete all empty lines from file

" Using grep command
:%! grep pattern              " Delete all lines having 'pattern'
:%! grep -v pattern           " Delete all lines **not** having 'pattern' or use :g!/pattern/d
:%! grep "error\|warn\|fail/" " Delete all lines **not** having error, warn or fail

" ^   Start of line
" \s  Select space
" *   0 or any number
" $   End of line
```

```vim
:%s/<some-text>/<some-text>/gn    " Will give the count of the number of times 'some-text' occurs in a file

" g - Globally select in whole file
" n - Donot replace any occurrence, only gives the occurrences count
```

### Working with ctags
```vim
C-]      " Jump to a tag
C-t      " Jump back from a tag
g]       " List all tags defined on for current string, you can jump to any tag in list

" Note - tags file can be created using ctags utility
```

### Autocomplete
Vim searches in tags file if present otherwise from list(:ls) of opened files in vim buffer to build list of autocompletes. Also has language specific logic to display autocomplete logic. Autocomplete commands works in **insert mode** only
```vim
C-p       " Goto previous autocomplete in list
C-n       " Goto next autocomplete in list
C-xC-n    " Search in current file only
C-xC-f    " Search filenames only
C-xC-]    " Search from tags fileonly
C-xC-l    " Search for whole line completion, searches by matching prefix
```

### Macros
#### Recording a macro
* In normal mode press `q` followed by a character like `qa` to record in register a
* Do operations you want to record
* Press `q` again to stop recording
* `@a` - Playback recorded operations in a. Use `10@a` to repeat recorded operation 10 times
* `@@` - Repeat last playback

#### Example
Below example shows how to replace string a new one in all C files present at current path
* `vim *.c` - Open all c files in vim
* `qa` - Start recording in register a
* `:%s/OldString/NewString/g` - Replace oldString with newString
* `:wnext` - Save current file and move to next one
* `q` - Stop recording
* `@a` - Verify if recording works correctly
* `999@a` - Repeat for all files, 999 used to cover all files

### Marks
#### User defined marks
```vim
mx    " Set a mark named x at current cursor position
‘x    " Jump to beginning of line of mark x
`x    " Jump to cursor position of mark x
```
Marks work across files also, for setting marks within the same file use lower case(a-z) chars and for inter file use upper case(A-Z) chars
```vim
mX    " Sets the mark, if we are in some other file, `X will open the marked line in other file
```

#### Predefined marks
Frequently used marks already defined by VIM
```vim
‘’(2 single quotes)  " Return to starting of line before the latestest jump
``(2 tik quotes)     " Return to cursor position before the lastest jump(undo jump)

‘.    " Return to the beginning of last line changed
gi    " Move cursor to position where we were in insert mode last time, also set insert mode

'<    " Move cursor to begining of line where last visual mode started
'>    " Move cursor to begining of line where last visual mode ended
`<    " Move cursor to position where last visual mode started
`>    " Move cursor to position where last visual mode ended

‘[    " Move to start boundary of the chunk of text last changed or yanked
‘]    " Move to end boundary of the chunk of text last changed or yanked

" Use `(tick) to jump on exact cusrsor positions
```

### Working with multiple files
#### Edit(e) new file
```vim
:e         " Refresh current file
:e!        " Refresh current file forcefully, ignoring changes
:e <file>  " Edit new file mentioned
:e#        " View previous file

" Use TAB while searching for new <file> to see all options
```

#### Splits
```vim
:sp          " Horizontally split current file
:vsp         " Vertically split current file
:sp <file>   " Open given file in horizontally splitted window
:vsp <file>  " Open given file in vertically splitted window

" Use TAB while searching for new <file> to see all options
```

Switch to other splitted window
```vim
C-wh    " Move to adjacent right window
C-wj    " Move to adjacent down window
C-wk    " Move to adjacent up window
C-wl    " Move to adjacent left window
```

```vim
C-wc    " Close current window
C-wo    " Maximize current window and minimize others
```

#### Switch between files
When we open multiple files using commands like `vim *.py`, below commands can be used for file navigation
```vim
:n[ext]    " Move to next file in list of opened files
:N[ext]    " Move to previous file in list of opened files
:wn[ext]   " Save and move to the next file in list of opened files
:wN[ext]   " Save and move to previous file in list of opened files
```

#### VIM tabs
```vim
:tabnew <file(s)>    " Open file(s) in new vim tab
:tabn[ext]           " Switch to next tab, :[tabN]ext also works
:tabp[revious]       " Switch to previous tab
```

#### List and open files in buffer(b)
List all buffered files, that was opened in current vim window using `:e`, `:find`, `:sp`, `:vsp` etc
```vim
:ls
```
```vim
:b <pattern>  " Open file which matches unique text in filename listed by `ls` command
:b <n>        " Open file numbered n in `ls` command file list
:bn[ext]      " Open next file in buffer
:bp[revious]  " Open previous file buffer
```

### File finder in VIM
#### Settings
Some settings before using `find` command, can be added in `~/.vimrc`
```vim
:filetype plugin on  " Enables filetype(provided by vim itself) plugin
:set path+=**        " Search in all directories and all subdirectories
:set path?           " Show value of path variable
```

#### Find command
Below command will search all files/directory matching given pattern, use `tab` and `shift + tab` to move around files
```vim
:find <pattern>TAB
```

#### Examples
Press `TAB` to see files
```vim
:find *.py    " Search all python files
:find main*   " Search all files starting with main...
:find TAB     " Show all files - current dir and all subdirs

:find <path/to/file/<pattern>>  " Search for files matching pattern, in given subdirectory
```

### VIM help
VIM help is one the best resource to learn VIM, below are few commands on how to utilise VIM help manual
```vim
:help         " Opens help manual, use C-] to open help of specific text, C-t to go back
:help ^n      " Opens help on what C-n key does in normal mode
:help i_^n    " Opens help on what C-n key does in insert mode
:help c_^n    " Opens help on what C-n key does in command mode
:help v_j     " Opens help on what does 'j' does in visual mode
```
```vim
:helpgrep <edit>    " Opens help which has keyword 'edit' in the entire vim help manual

" Navigate helpgrep result using below commands
:cl     " List all occurrences
:cn     " Goto next occurrence
:cp     " Previous occurrence
:cc2    " Goto 2nd(nth) item
```

### Aliases
#### [cniv]noremap
Below mapping maps command `find` to alias ff
```vim
cnoremap ff find

" First c indicates that this mapping is applicable in command mode only
" Now we can use `ff` instead of `find` to find a file
```

Below mapping maps keystroke `--` to dump contents of some file `jira.txt` and start inserting after that content in normal mode
```vim
nnoremap -- :-1read $HOME/.vim/jira.txt<CR>A

" First n indicates this mapping is applicable in normal mode only
" -1 is used to make sure that text is inserted from current line and no new line inserted at the beginning
" `A` is used to start inserting at end of line(content of file)
" Note: Any custom sequence of vim commands can be added after <CR>
```
Other mappings can be created using `inoremap` and `vnoremap` in insert and visual modes respectively

#### Other mappings
Below abbreviation command maps keystorke `#b` in insert mode to add given comment
```vim
:ab[breviate] #b /***********************/
```

Maps keystroke `ce` to insert given comment in normal mode
```vim
:map ce :put='/*klocwork_fix_2_5_4_end*/'<CR>
```

### Settings
There are many VIM settings that we can do in VIM's current window or add permanent ones to `.vimrc` file. Below are some of the examples of VIM settings
```vim
:set nu[mber]        " Set absolute line numbers
:set relativenumber  " Set relative numbers, Useful for yanking(y) and deleting(d) lines w.r.t current position

:set spell           " Enable spellcheck, To add any word to spell check dictionary, move cursor to that word and press zg

:set spell?          " ? can be used to see value of a variable
```

### Some examples
#### Insert # at the start of each line(comment few lines)
##### Method 1, Use absolute line numbers
```vim
:8,11s/^/#/g    " Insert `#` in starting of lines 8 to 11

" 8 and 11 are absolute line numbers(not relative)
" ^ Denotes start of line
```

##### Method 2, Using visual mode
* Goto start line from where you want to comment
* Press `C-v` to start visual mode, now use `j(or k)` with some number like `9j(or k)` to 9 select more lines
* Press `I`, press commenting character like `#` for scripting languages
* `ESC`, this will comment all lines selected

#### Change text using visual mode
* Select a rectangular block in visual mode using `C-v` + `h, j, k, l`
* Press `c` to cut the selection and then add any new text followed by `ESC`
* Selected rectangular block will be updated with new text
* __Note__ Pressing `d` in second step will delete the selected text

### Plugins
* We can use vim plugin manager [vim-plug](https://github.com/junegunn/vim-plug) to easy manage various plugins we use
#### fzf.vim
* [This](https://github.com/junegunn/fzf.vim) plugin uses `fzf` program in vim have fuzzy file searches
* Some basic commands on how to this and open files using fuzzy search vim plugin
```vim
" Start search, this command used very frequently so it is aliased on some short key binding
" like <C-p> in normal mode using :nnoremap <C-p> :Files<Cr>
:Files

:Files!   " Search in full screen window
:Buffers  " Open list of files in buffer
```

* Within fzf search window
  * Use up/down arrow or `<C-p>/<C-n>` to move up down in file list
  * `Enter` to open selected file in current window
  * `<C-t>` to open in new tab
  * `<C-v>` to open in vertical split
  * `<C-x>` to open in horizontal split
* fzf window appearance
  * Bottom: `let g:fzf_layout = { 'down': '40%' }`
  * Popup:  `let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }`

### Others
#### VIM encryption
We can encrypt files in VIM itself while saving
```vim
" Will ask for encryption key twice and then save the encrypted file
" Now when we open this file, it will ask for key to decrypt the file
:X

" Removes encryption from file
:set key=<ENTER>

" In VIM 8.x default encryption method used is *blowfish2* and this is the recommended method to use
" Other methods supported are zip and blowfish - not much reliable
:set cryptmethod=blowfish2
```

#### Open man page from VIM
```vim
K    " Open man page of the word where cursor is
2K   " Open man page section 2(or n)
```

#### Add current word to VIM dictionary
```vim
zg   " Add word under cursor to vim dictionary, this word will not be marked as red with :spell
```

#### Command mode history
```vim
:C-f " Open list of last 50 commands executed, goto any command and hit enter to redo that command
```

#### Multiple ways to display current filename
```vim
:w                 " Saving file displays filename also
C-g                " Show current filename with other details(char count, lines...)
:f                 " Show current filename with other details(char count, lines...), same as C-g
:echo expand("%")  " Show current filename

# The advantage of having the status line displayed always is, you can see the current mode, file name,
# file status, ruler, etc.
:set laststatus=2

# Set filename in statusline, although is displayed by default but as an example
:set statusline=%F  # Full absolute file path
:set statusline=%f  # Relative filepath
```

### Resources
* My `.vimrc`: https://github.com/hansrajdas/dotfiles
* Useful plugins
  * https://github.com/junegunn/vim-plug
  * https://github.com/junegunn/fzf.vim
  * https://github.com/tpope/vim-surround

### References
* Shifting blocks: http://vim.wikia.com/wiki/VimTip224
* Moving around: http://vim.wikia.com/wiki/Moving_around
* Increasing and decreasing: http://vim.wikia.com/wiki/Increasing_or_decreasing_numbers
* Recording keys for repeated jobs: http://vim.wikia.com/wiki/Recording_keys_for_repeated_jobs
* VIM navigation Commands: https://www.youtube.com/watch?v=Qem8cpbJeYc
* Mastering the VIM language: https://www.youtube.com/watch?v=wlR5gYd6um0
* Without plugin: https://www.youtube.com/watch?v=XA2WjJbmmoM
* From muggle to wizard: https://www.youtube.com/watch?v=MquaityA1SM
* Cut copy paste: http://vim.wikia.com/wiki/Copy,_cut_and_paste
