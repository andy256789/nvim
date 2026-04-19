# Neovim Keybinds (nvim config)

Leader key: Space

## Core editing and movement

- `<leader><leader>`: Source current file
- `J` (normal): Join lines and keep cursor stable
- `J` (visual): Move selected lines down
- `K` (visual): Move selected lines up
- `<C-d>`: Half-page down and center cursor
- `<C-u>`: Half-page up and center cursor
- `n`: Next search result and center cursor
- `N`: Previous search result and center cursor
- `<` (visual): Indent left and keep selection
- `>` (visual): Indent right and keep selection
- `<C-c>` (insert): Escape
- `<C-c>` (normal): Clear search highlight
- `Q`: Disabled

## Clipboard and text operations

- `<leader>p` (visual block): Paste without overwriting unnamed register
- `p` (visual): Paste without yanking replaced text
- `<leader>Y`: Yank to system clipboard
- `<leader>d` (normal/visual): Delete without yanking
- `x`: Delete char without yanking
- `<leader>s`: Substitute word under cursor globally
- `<leader>f`: Format buffer
- `<leader>fp`: Copy file path to clipboard

## Tabs and windows

- `<leader>to`: New tab
- `<leader>tx`: Close tab
- `<leader>tn`: Next tab
- `<leader>tp`: Previous tab
- `<leader>tf`: Open current file in new tab
- `<leader>sv`: Vertical split
- `<leader>sh`: Horizontal split
- `<leader>se`: Equalize split sizes
- `<leader>sx`: Close current split

## File explorer (Oil)

- `-`: Open parent directory with Oil
- `<leader>-`: Toggle Oil floating window

## Telescope

- `<leader>ff`: Find files
- `<leader>fg`: Live grep (requires ripgrep)
- `<leader>fb`: Find buffers
- `<leader>fh`: Help tags

## Undo tree

- `<leader>u`: Toggle Undotree

## LSP navigation and actions

- `gd`: Go to definition
- `gD`: Go to declaration
- `gi`: Go to implementation
- `K`: Hover documentation
- `<leader>rn`: Rename symbol
- `<leader>ca`: Code actions

## LSP diagnostics (warnings/errors)

- `gl`: Show diagnostics for current line
- `[d`: Jump to previous diagnostic
- `]d`: Jump to next diagnostic
- `<leader>dl`: Put diagnostics into location list

### How to inspect warnings and apply suggested fixes

1. Place cursor on warning line and press `gl` to open diagnostic details.
2. Move between warnings with `[d` and `]d`.
3. Press `<leader>ca` on a warning to view available code actions and quick fixes.
4. Press `<leader>dl` to collect diagnostics in location list, then use:
    - `:lopen` to open list
    - `:lnext` to jump to next item
    - `:lprev` to jump to previous item
    - `:lclose` to close list

## Useful commands

- `:LspInfo`: Show attached LSP clients
- `:checkhealth vim.lsp`: LSP health check
- `:checkhealth telescope`: Telescope dependency health check
