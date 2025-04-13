# VSCode Vim Cheatsheet

## Core Vim Navigation (Normal Mode)

_Includes bindings from `vim.normalModeKeyBindingsNonRecursive`_
| Key | Action |
|---------------|---------------------------------------------------------|
| `h`/`l` | Move cursor left/right |
| `j`/`k` | Move cursor down/up |
| `w`/`b` | Move to start of next/previous word |
| `e`/`ge` | Move to end of next/previous word |
| `H` | Move to first non-blank character in the line (`^`) |
| `L` | Move to the end of the line (`$`) |
| `0` | Move to absolute start of line |
| `^` | Move to first non-blank character in the line |
| `$` | Move to end of line |
| `f{char}`/`F{char}` | Find character forward/backward on line |
| `t{char}`/`T{char}` | Move cursor _till_ before character forward/backward |
| `;`/`,` | Repeat last `f`/`t`/`F`/`T` search forward/backward |
| `gg` | Go to the first line of the file |
| `G` (Shift+g) | Go to the last line of the file |
| `ctrl+u`/`ctrl+d` | Page up/down |
| `ctrl+o`/`ctrl+i` | Jump backward/forward in jump list |
| `zz`/`zt`/`zb`| Center/top/bottom current line on screen |
| `ctrl+e`/`ctrl+y` | Scroll screen one line down/up |
| `gd` | Go to definition |
| `gD` | Go to global definition (if supported) |
| `gf` | Go to implementation (`editor.action.goToImplementation`) |
| `gq` | Trigger quick fix actions (`editor.action.quickFix`) |
| `gr` | Trigger reference search (`editor.action.referenceSearch.trigger`) |
| `gH` | Go to references (`editor.action.goToReferences`) |
| `gh` | Show hover information (`editor.action.showDefinitionPreviewHover`) |
| `gp` | Peek definition (`editor.action.peekDefinition`) |
| `gy` | Show registers (`:reg`) |
| `gj` | Show jump list (`:ju`) |
| `gx` | Show marks (`:marks`) |
| `gb` | Add cursor to next search match (`*`) |
| `%` | Go to matching bracket/brace/paren |
| `Enter` | Insert new line below and return to Normal mode (`o<Esc>`) |
| `g Enter` | Insert new line above and return to Normal mode (`O<Esc>`) |
| `z n` | Navigate Back (VSCode History) (`workbench.action.navigateBack`) |
| `z m` | Navigate Forward (VSCode History) (`workbench.action.navigateForward`) |
| `<leader> j` | Open Previous Recently Used Editor |
| `<leader> k` | Open Next Recently Used Editor |
| `t` | Custom mapping (`<leader><leader>s`) |
| `F` | Custom mapping (`<leader><leader>s`) |
| `T` | Custom mapping (`<leader><leader><leader>j`) |
| `z` | Custom mapping (`<leader><leader>`) |
| `Z` | Custom mapping (`<leader><leader><leader>b d`) |
| `z z` | Custom mapping (`z`) |
| `u` | Undo |
| `U` | Redo |

## VSCode Specific Navigation & Code Intelligence

| Key                | Action                                                                 |
| ------------------ | ---------------------------------------------------------------------- |
| `alt+k`/`j`        | Move cursor up/down                                                    |
| `alt+h`/`l`        | Move cursor left/right                                                 |
| `alt+,`/`alt+.`    | Navigate back/forward in VSCode history                                |
| `shift+alt+,`/`.`  | Navigate back/forward in Edit Locations History                        |
| `ctrl+alt+,`/`.`   | Navigate Previous/Next Editor (in group)                               |
| `alt+n d`          | Go to definition (`editor.action.revealDefinition`)                    |
| `alt+n i`          | Go to implementation (`editor.action.goToImplementation`)              |
| `alt+n h`          | Preview definition (`editor.action.showDefinitionPreviewHover`)        |
| `alt+u alt+u`      | Go to references / Close reference search                              |
| `j`/`k` (refs)     | Go to Next/Previous reference (in reference search view)               |
| `g+r` (refs)       | Close reference search (when reference search visible)                 |
| `alt+a b`          | Jump to matching bracket (standard Vim `%`)                            |
| `alt+a alt+b`      | Jump to matching bracket (`editor.action.jumpToBracket`)               |
| `alt+i a`          | Trigger quick fix actions (`editor.action.quickFix`)                   |
| `alt+i alt+a`      | Trigger quick fix actions (`editor.action.quickFix`)                   |
| `alt+i shift+a`    | Apply auto fix (`editor.action.autoFix`)                               |
| `ctrl+shift+alt+.` | Apply auto fix (`editor.action.autoFix`)                               |
| `alt+i c`          | Insert Console Log (`turboConsoleLog.displayLogMessage`)               |
| `alt+i d`          | Delete All Console Logs (`turboConsoleLog.deleteAllLogMessages`)       |
| `alt+i /`          | Comment All Console Logs (`turboConsoleLog.commentAllLogMessages`)     |
| `alt+i shift+/`    | Uncomment All Console Logs (`turboConsoleLog.uncommentAllLogMessages`) |
| `alt+n o`          | Open Link under cursor (`editor.action.openLink`)                      |

## Selection & Visual Mode

_Includes bindings from `vim.visualModeKeyBindingsNonRecursive`_
| Key | Action |
|-----------------|------------------------------------------------------------|
| `v`/`V`/`ctrl+v`| Enter visual/visual line/visual block mode |
| `gv` | Reselect previous visual selection |
| `o` | Move cursor to other end of selection |
| `>`/`<` | Indent/outdent selection |
| `u`/`U` | Lowercase/Uppercase selection |
| `~` | Toggle case of selection |
| `gb` | Add next occurrence to selection |
| `al`/`ah` | Expand/Shrink selection (smartSelect) |
| `alt+a alt+l` | Expand selection (smartSelect) |
| `alt+a alt+h` | Shrink selection (smartSelect) |
| `alt+a shift+b` | Select to matching bracket (`editor.action.selectToBracket`) |
| `gq` | Format selection (Standard Vim) / Quick Fix (Settings) |
| `gr` | Go to References (Settings) |
| `p` | Paste Before (mapped to `P`) |
| `t` | Custom mapping (`<leader><leader>s`) |
| `F` | Custom mapping (`<leader><leader>s`) |
| `T` | Custom mapping (`<leader><leader><leader>j`) |
| `z` | Custom mapping (`<leader><leader>`) |
| `Z` | Custom mapping (`<leader><leader><leader>b d`) |
| `z z` | Custom mapping (`z`) |
| `g /` | Search forward for visual selection |
| `g ?` | Search backward for visual selection |
| `shift+alt+k`/`j` | Select line up/down (`cursorUp/DownSelect`) |
| `shift+alt+h`/`l` | Select left/right (`cursorLeft/RightSelect`) |
| `H` | Select to first non-blank character in the line (`^`) |
| `L` | Select to the end of the line (`$`) |

## Editing (Insert Mode)

_Includes bindings from `vim.insertModeKeyBindings`_
| Key | Action |
|---------------|-------------------------------------------------------------------|
| `ii` | Escape to normal mode (`<Esc>`) |
| `hh` | Move left, then execute one normal mode command (`left`, `<C-o>`) |
| `i Enter` | Escape, then insert new line below (`<Esc>`, `o`) |
| `I Enter` | Escape, then insert new line above (`<Esc>`, `O`) |
| `ctrl+n`/`p` | Select next/previous suggestion (if suggestion widget visible) |

## Editing (VSCode Specific & Refactoring)

| Key                  | Action                                                         |
| -------------------- | -------------------------------------------------------------- |
| `alt+k`/`j` (Normal) | Move current line up/down                                      |
| `alt+i f`            | Trigger/Hide code suggestions (`editor.action.triggerSuggest`) |
| `alt+i alt+f`        | Trigger/Hide code suggestions                                  |
| `alt+i i`            | Trigger/Hide inline suggestions (Copilot)                      |
| `alt+i alt+i`        | Trigger/Hide inline suggestions                                |
| `alt+i j`/`k`        | Show Next/Previous inline suggestion                           |
| `alt+i l`            | Accept Next Word of inline suggestion                          |
| `alt+i alt+l`        | Commit (Accept) inline suggestion                              |
| `alt+enter`          | Commit (Accept) inline suggestion                              |
| `alt+tab`            | Commit (Accept) inline suggestion                              |
| `alt+a w`            | Wrap selection with Emmet abbreviation                         |
| `alt+a o`/`i`        | Balance HTML tags outward/inward (Emmet)                       |
| `alt+a alt+o`/`i`    | Balance HTML tags outward/inward (Emmet)                       |
| `alt+a alt+r`        | Remove matching brackets (`editor.action.removeBrackets`)      |
| `alt+n shift+r`      | Remove Unused Imports (JS/TS)                                  |
| `alt+b`              | Delete Left (like Backspace)                                   |
| `ctrl+shift+0`       | Reset Editor Font Zoom (`editor.action.fontZoomReset`)         |
| `ctrl+shift+=`/`-`   | Editor Font Zoom In/Out (`editor.action.fontZoomInOut`)        |
| `alt+a \`            | Split Vue Editors (`vue.action.splitEditors`)                  |
| `alt+a -`            | Toggle Split Editor Layout (Side-by-Side)                      |

## Text Objects (Combine with `d`, `c`, `y`)

| Key       | Action                               |
| --------- | ------------------------------------ |
| `iw`/`aw` | Inside/Around word                   |
| `iW`/`aW` | Inside/Around WORD (space separated) |
| `is`/`as` | Inside/Around sentence               |
| `ip`/`ap` | Inside/Around paragraph              |
| `i"`/`a"` | Inside/Around double quotes          |
| `i'`/`a'` | Inside/Around single quotes          |
| `i`/`a`   | Inside/Around backticks              |
| `i(`/`a(` | Inside/Around parentheses `()`       |
| `ib`/`ab` | Inside/Around block `()`             |
| `i[`/`a[` | Inside/Around square brackets `[]`   |
| `i{`/`a{` | Inside/Around curly braces `{}`      |
| `iB`/`aB` | Inside/Around Block `{}`             |
| `i<`/`a<` | Inside/Around angle brackets `<>`    |
| `it`/`at` | Inside/Around HTML/XML tag           |

## Macros & Registers

| Key      | Action                           |
| -------- | -------------------------------- |
| `q{a-z}` | Record macro into register {a-z} |
| `q`      | Stop recording macro             |
| `@{a-z}` | Play macro from register {a-z}   |
| `@@`     | Repeat last played macro         |
| `:reg`   | Show register contents           |
| `gy`     | Show register contents (`:reg`)  |

## File Explorer Navigation (When Focused)

| Key             | Action                                |
| --------------- | ------------------------------------- |
| `j`/`k`         | Move selection down/up                |
| `h`             | Collapse selected folder              |
| `l`             | Select/Expand selected item           |
| `o`             | Toggle expand/collapse folder         |
| `ctrl+u`/`d`    | Page up/down                          |
| `gg`/`G`        | Go to first/last item                 |
| `f`             | Filter/Find items in the list         |
| `enter`         | Select/Open item                      |
| `v`             | Open file in a side split             |
| `a`             | Add new file (`explorer.newFile`)     |
| `A` (Shift+a)   | Add new folder (`explorer.newFolder`) |
| `alt+n shift+n` | Add new folder (`explorer.newFolder`) |
| `d`             | Delete selected file/folder           |
| `y`             | Copy selected file/folder             |
| `x`             | Cut selected file/folder              |
| `p`             | Paste copied/cut file/folder          |
| `r`             | Rename selected file/folder           |
| `R` (Shift+r)   | Refresh file explorer                 |
| `zo`/`zO`       | Expand folder                         |
| `zc`/`zC`       | Collapse folder                       |
| `za`/`zA`       | Toggle expand/collapse                |
| `zm`/`zM`       | Collapse All                          |

## List Navigation (Quick Open, Outline, etc.)

| Key                      | Action                                |
| ------------------------ | ------------------------------------- |
| `j`/`k`                  | Focus down/up                         |
| `h`/`l`                  | Collapse/Select                       |
| `ctrl+u`/`d`             | Focus page up/down                    |
| `gg`/`G`                 | Focus first/last                      |
| `o`                      | Toggle Expand                         |
| `f`                      | Find in list (if supported)           |
| `ctrl+f`                 | Toggle Find Mode                      |
| `enter`                  | Select / Close Find (if Find open)    |
| `ctrl+n`/`p`             | Focus down/up                         |
| `alt+k`/`j` (Quick Open) | Navigate Previous/Next in File Picker |

## File Management (General Commands)

| Key           | Action                                               |
| ------------- | ---------------------------------------------------- |
| `alt+n n`     | New File (`fileutils.newFile`)                       |
| `alt+n alt+n` | New File at Project Root (`fileutils.newFileAtRoot`) |
| `alt+n alt+d` | Duplicate Current File (`fileutils.duplicateFile`)   |
| `alt+n alt+m` | Move/Rename Current File (`fileutils.moveFile`)      |
| `alt+f c`     | Copy Relative Path of Current File                   |

## Git Integration

| Key                 | Action                                              |
| ------------------- | --------------------------------------------------- |
| `alt+s s`           | Stage Hunk / Stage Selected Ranges                  |
| `alt+s alt+s`       | Stage Current File (`git.stage`)                    |
| `alt+s shift+s`     | Stage All Changes (`git.stageAll`)                  |
| `alt+s u`           | Unstage Hunk / Unstage Selected Ranges              |
| `alt+s alt+u`       | Unstage Current File (`git.unstage`)                |
| `alt+s shift+u`     | Unstage All Changes (`git.unstageAll`)              |
| `alt+s d`           | Toggle Collapse Unchanged Regions (Diff)            |
| `alt+s j`/`k`       | Next/Previous Change (Compare Editor/Editor)        |
| `alt+s shift+j`/`k` | Next/Previous Dirty Diff Change (Editor)            |
| `alt+s c`           | Git Command Palette (`>git `)                       |
| `alt+s alt+c`       | Git Checkout (`git.checkout`)                       |
| `alt+s shift+r`     | Clean Working Tree (`git.clean`)                    |
| `alt+s h`           | Show Git File History (`git-file-history`)          |
| `alt+s r`           | Revert Change (`git.revertChange`)                  |
| `alt+s alt+r`       | Revert Selected Ranges (`git.revertSelectedRanges`) |
| `alt+s o`           | Open Change / Open File (Diff Editor)               |
| `alt+s shift+o`     | View Changes (`git.viewChanges`)                    |
| `alt+s f`           | Focus SCM View (`workbench.view.scm`)               |

## Window, Tab & Editor Group Management

| Key                         | Action                                               |
| --------------------------- | ---------------------------------------------------- |
| `alt+g 1-4`                 | Focus Editor Group 1-4                               |
| `alt+g k`/`j`/`h`/`l`       | Navigate Focus Up/Down/Left/Right between groups     |
| `alt+g alt+k`/`j`/`h`/`l`   | Move Editor to Group Above/Below/Left/Right          |
| `alt+shift+g k`/`j`/`h`/`l` | Create New Group Above/Below/Left/Right & Quick Open |
| `alt+g m`                   | Toggle Maximize Editor Group                         |
| `alt+g shift+m`             | Maximize Editor Group & Hide Sidebar                 |
| `alt+g e`                   | Minimize Other Editor Groups                         |
| `alt+g shift+e`             | Minimize Other Editor Groups & Hide Sidebar          |
| `alt+g p`                   | Pin/Unpin Active Editor Tab                          |
| `alt+g o`                   | Toggle Editor Group Lock                             |
| `alt+g r`                   | Even Editor Widths                                   |
| `alt+g t`                   | Toggle Editor Widths (Split Vertically?)             |
| `alt+q q`/`alt+q alt+q`     | Close Active Editor                                  |
| `alt+q shift+q`             | Close All Editors                                    |
| `alt+q g`                   | Close Editors in Group                               |
| `alt+q shift+g`             | Close All Editor Groups                              |
| `ctrl+w q`                  | Close Active Editor (non-editor focus)               |
| `ctrl+w =`                  | Even Editor Widths                                   |
| `ctrl+w _`                  | Toggle Editor Widths                                 |
| `ctrl+w >`/`<`              | Increase/Decrease View Width                         |
| `ctrl+w +`/`-`              | Increase/Decrease View Height                        |
| `ctrl+pageup`/`pagedown`    | Navigate editor tab history back/forward             |

## Terminal Control

| Key                  | Action                                                  |
| -------------------- | ------------------------------------------------------- |
| `alt+t t`            | Create New Terminal in Side Editor                      |
| `alt+t alt+t`        | Create New Terminal in Main Editor Area                 |
| `alt+t n`            | Create New Terminal in Panel                            |
| `alt+t shift+n`      | Split Active Terminal                                   |
| `alt+t c`/`alt+t r`  | Clear Terminal                                          |
| `alt+t r`            | Toggle Tab Focus Mode (Also Clear)                      |
| `alt+t f`            | Focus Terminal Tabs View                                |
| `alt+t o`            | Quick Open Terminals (`workbench.action.quickOpenTerm`) |
| `alt+t p`            | Move Terminal Editor to Panel / Panel to Editor         |
| `alt+t q`            | Kill Active Terminal Instance                           |
| `alt+t shift+q`      | Kill All Terminal Instances                             |
| `alt+t ctrl+shift+n` | Move Terminal into New Window                           |
| `alt+t alt+h`/`l`    | Resize Terminal Pane Left/Right                         |
| `alt+t 0`            | Reset Terminal Font Zoom                                |
| `alt+t -`/`=`        | Terminal Font Zoom Out/In                               |
| `alt+m t`            | Toggle Terminal Panel visibility (when terminal active) |
| `ctrl+Escape`        | Focus Active Editor Group (from Terminal)               |

## Search & Replace

| Key                     | Action                                                     |
| ----------------------- | ---------------------------------------------------------- |
| `/`/`?`                 | Start Vim-style search forward/backward                    |
| `n`/`N`                 | Repeat last search forward/backward                        |
| `*`/`#`                 | Search forward/backward for word under cursor              |
| `alt+f f`               | Find in Files (Project-wide search)                        |
| `alt+f n`/`shift+n`     | Go to Next/Previous Search Result (Project Search Results) |
| `alt+f alt+f`           | Find in Current Editor (`actions.find`)                    |
| `alt+f alt+n`/`shift+n` | Next/Previous Find Match (Current Editor)                  |
| `alt+o s`               | Show All Symbols in Current File                           |
| `alt+o alt+s`           | Go to Symbol in Workspace (Project-wide)                   |
| `alt+o f`               | Quick Text Search (`workbench.action.quickTextSearch`)     |
| `alt+o alt+f`           | Open New Search Editor                                     |
| `alt+o shift+f`         | Open New Search Editor to the Side                         |
| `alt+m f`               | Focus Search View / Find in Files                          |

## UI Controls & View Management

| Key                     | Action                                                 |
| ----------------------- | ------------------------------------------------------ |
| `capslock`              | Toggle Minimap visibility                              |
| `alt+m l`               | Toggle Primary Sidebar visibility                      |
| `alt+m j`               | Toggle Panel visibility (bottom)                       |
| `alt+m shift+j`         | Toggle Maximized Panel                                 |
| `alt+m h`               | Toggle Auxiliary Bar visibility (side)                 |
| `alt+m c`               | Toggle Centered Editor Layout                          |
| `alt+m m`/`alt+m alt+m` | Customize Layout                                       |
| `alt+o l`               | Customize Layout                                       |
| `alt+m shift+m`         | Move View (e.g., Panel to Sidebar)                     |
| `alt+m g`               | Toggle Editor Widths (Split Vertically?)               |
| `alt+m e`               | Focus Explorer View                                    |
| `alt+m shift+e`         | Maximize Editor & Hide Sidebar                         |
| `alt+m s`               | Focus SCM View                                         |
| `alt+m o`               | Focus Outline View                                     |
| `alt+m shift+o`         | Focus Output Panel                                     |
| `ctrl+shift+alt+0`      | Reset Workbench Zoom                                   |
| `ctrl+shift+alt+=`/`-`  | Workbench Zoom In/Out                                  |
| `alt+a alt+s`           | Toggle Locked Scrolling (Sync Scrolling)               |
| `alt+v alt+v`           | Vim Command Line Quick Pick                            |
| `alt+v v`               | Toggle Vim On/Off (`toggleVim`)                        |
| `alt+o shift+r`         | Reload Window                                          |
| `alt+f e`               | Focus First Editor Group                               |
| `alt+f r`               | Focus Open Editors View (when active)                  |
| `alt+f o`               | Focus Outline View                                     |
| `alt+f b`               | Focus Breadcrumbs                                      |
| `alt+f a`               | Focus Activity Bar                                     |
| `alt+f s`               | Focus Sticky Scroll / Select Editor from Sticky Scroll |
| `alt+f d`               | Focus Status Bar                                       |
| `alt+f t`               | Focus Terminal Tabs View                               |

## Folding (Standard VSCode/Vim)

| Key  | Action                 |
| ---- | ---------------------- |
| `zo` | Open Fold              |
| `zO` | Open Fold Recursively  |
| `zc` | Close Fold             |
| `zC` | Close Fold Recursively |
| `za` | Toggle Fold            |
| `zM` | Close All Folds        |
| `zR` | Open All Folds         |

## Hover Navigation (When Hover Focused)

| Key          | Action                                          |
| ------------ | ----------------------------------------------- |
| `shift+k`    | Show Hover (if visible, not in Vim Normal mode) |
| `j`/`k`      | Scroll Down/Up                                  |
| `h`/`l`      | Scroll Left/Right                               |
| `ctrl+f`/`b` | Page Down/Up                                    |
| `ctrl+d`/`u` | Half Page Down/Up                               |
| `gg`/`G`     | Go to Top/Bottom                                |

## History Widget Navigation

| Key               | Action                                 | Context                  |
| ----------------- | -------------------------------------- | ------------------------ |
| `alt+shift+j`/`k` | Show Next/Previous History Item        | History Widget Focus     |
| `alt+shift+j`/`k` | Show Next/Previous Interactive History | Interactive Editor Focus |
| `alt+shift+j`/`k` | Show Next/Previous Commit in SCM Input | SCM Input Focus          |

## Operator Pending Mode (Vim)

_Apply after an operator like `d`, `c`, `y`._
| Key | Action |
|-----|-----------------------------------------------|
| `H` | Apply operator to start of line (`^`) |
| `L` | Apply operator to end of line (`$`) |

## Rename Input Navigation (When Rename Input Visible)

| Key          | Action                         |
| ------------ | ------------------------------ |
| `ctrl+n`/`p` | Focus Next/Previous Suggestion |

## AI Tool Integration (Copilot, Codeium, Roo-Cline)

| Tool      | Key                 | Action                                       |
| --------- | ------------------- | -------------------------------------------- |
| Copilot   | `alt+e o`           | Generate Code (`github.copilot.generate`)    |
| Copilot   | `alt+e i`           | Start/Close Inline Chat / Terminal Chat      |
| Copilot   | `alt+e j`/`k`       | Cycle Panel Solutions Prev/Next              |
| Copilot   | `alt+e a`           | Accept Panel Solution                        |
| Copilot   | `alt+e e`           | Open Edit Session in Chat Panel              |
| Copilot   | `alt+e alt+c`       | Focus Copilot Chat Panel                     |
| Copilot   | `alt+e alt+e`       | Focus Copilot Edits Panel                    |
| Copilot   | `alt+e alt+v`       | Attach Selection to Chat                     |
| Copilot   | `alt+e v`           | Attach Selection to Edits                    |
| Copilot   | `alt+e c`           | Quick Open >chat                             |
| Copilot   | `alt+e shift+c`     | Open Chat in Editor                          |
| Copilot   | `alt+o e`           | Quick Open >chat                             |
| Copilot   | `alt+o shift+e`     | Quick Open >copilot                          |
| Codeium   | `alt+u c`           | Open Codeium Chat View / Quick Open >codeium |
| Codeium   | `alt+o u`           | Open Codeium Command Palette                 |
| Codeium   | `alt+u alt+l`       | Chat About Block                             |
| Codeium   | `alt+u alt+a`       | Accept Diff Action                           |
| Codeium   | `alt+u alt+f`       | Follow Up Diff Action                        |
| Codeium   | `alt+u alt+r`       | Reject Diff Action                           |
| Codeium   | `alt+u alt+c`       | Cancel Command                               |
| Codeium   | `alt+u v`           | Focus Codeium View                           |
| Roo-Cline | `alt+v a`           | Add Selection/File to Context                |
| Roo-Cline | `alt+v e`           | Explain Code                                 |
| Roo-Cline | `alt+v f`           | Fix Code                                     |
| Roo-Cline | `alt+v i`           | Improve Code                                 |
| Roo-Cline | `alt+v n`           | New Task (Plus Button Clicked)               |
| Roo-Cline | `alt+v alt+n`       | New Task (`roo-cline.newTask`)               |
| Roo-Cline | `alt+v o`           | Popout Chat Window                           |
| Roo-Cline | `alt+v p`           | Show Prompts                                 |
| Roo-Cline | `alt+f v`           | Focus Roo-Cline Input                        |
| Roo-Cline | `alt+m r`/`alt+m v` | Focus Roo-Cline Activity Bar View            |
