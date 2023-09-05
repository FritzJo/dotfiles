# VIM Guide
## Plugins
* fugitive
    * Git integration
    * :G <git command>
* indent-blankline.nvim
    * Shows indentation lines
    * No commands
* ToggleTerm
    * Quickly open a terminal
    * :ToggleTerm

## General commands
* <Leader> == ,
    * Leader+l == show tabs and new lines
    * Leader+q == format current paragraph so it does not exceed the line limit
* Working with multiple files
    * :e <path> to open new file
    * switch between files via buffers :b1 :b2 ...
    * yanking/pasting between files "just works"
    * open files side by side => :split
        * switching between windows => ctrl+w then arrow key
        * only in normal mode
    * split vertically => :vsplit

