### global variable:
- leader      = " "
- localleader = "\\"

### command line:
- :w          -> save file
- :q          -> quit file
- :<sign>!    -> force command given by <sign>
- :Lazy       -> run lazy package manager
- :LspInstall -> open language server manager
- :LspInfo    -> open info about current page server manager
- :LspLog     -> open current LSP server logs

### key bindings:
- leader + pv    -> close opened file
- leader + h     -> go to the left window 
- leader + j     -> go to the lower window 
- leader + k     -> go to the upper window 
- leader + l     -> go to the right window 
- ctrl + h       -> open current help-file
- ctrl + o       -> go to the previous window
- ctrl + q       -> close current window
- ctrl + alt + q -> close nvim
- ctrl + alt + t -> open terminal

### neo-tree:
- enter -> open the file
- s     -> open file on the right of the most-right code window
- a     -> create file, if folder should add '/'(slash) in the end
- d     -> delete file
- i     -> show file details
- r     -> rename file
- b     -> rename without the extension
- m     -> move
- c     -> copy

### fugitive:
- leader + gs -> info about current branch

### harpoon:
- leader + a -> add file to harpoon
- ctrl + e   -> open harpoon ui
- ctrl + 1   -> open 1 file 
- ctrl + 2   -> open 2 file 
- ctrl + 3   -> open 3 file 
- ctrl + 4   -> open 4 file

### lsp:
- Up   -> previous item in suggestion list
- Down -> next item in suggestion list
- Tab  -> autocomlete current item from list
- ctrl + y -> idk 
- ctrl + e -> idk 
- ctrl + p -> idk 
- leader + gf -> format the file

### telescope:
- leader + pf -> open file searcher in the current project
- leader + ps -> search string in whole the project
- ctrl + p    -> search in the current git repo

### udotree:
- leader + u -> tree of changes

### vim:
- h -> move left
- j -> move down
- k -> move up
- l -> move right
- 0 -> move to the first element
- $ -> move to the last element
- e -> move to the last symbol of the current word
- w -> move to the next word
- b -> move to the first symbol of the word
- i -> start writing before the current element
- a -> start writing after the current element
- o -> start writing on the line lower
- O -> start writing on the line above
- c<direction> -> move to the direction, clear everything till it and stiart writing
- C -> clear the line starting from the current element and start writing
- p -> paste right to the current position
- P -> paste left to the current position
- y -> copy selecte
- yy -> copy current line
- x -> delete current symbol 
- s -> delete current symbol and start writing on it's position
- S -> delete current line and start writing on it's position
- d -> delete selected
- dd -> delete current line
- f<symbol> -> find next <symbol> match on the current line
- F<symbol> -> find previous <symbol> match on the current line
- q<symbol> -> start patter recording; q(if recording started) -> stop recording
- @<symbol> -> repeat recorded pattern
- v -> start VISUAL mode
- V -> start VISUAL LINE mode
- ctrl + v -> start VISUAL BLOCK mode; I -> start writing in each VISUAL BLOCK
- u -> revert previous changes
- ctrl + r -> rever reverted changes

### tips:
1. [arch|wayland] for using system clipboard have to install wl-clipboard

