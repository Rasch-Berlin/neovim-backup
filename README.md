# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.


```
git clone https://github.com/Rasch-Berlin/neovim-backup.git ~/.config/nvim
```

Damit C&P auch von headless servern über ssh klappt:
In options.lua  einfügen:

```
-- OSC52 als Clipboard-Provider erzwingen
if vim.fn.has('nvim-0.10') == 1 then
  vim.g.clipboard = {
    name = 'OSC 52',
    copy = {
      ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
      ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
    },
    paste = {
      ['+'] = require('vim.ui.clipboard.osc52').paste('+'),
      ['*'] = require('vim.ui.clipboard.osc52').paste('*'),
    },
  }
end
```


Und dann noch in options.lua Folgendes:

```
-- Nutze das System-Clipboard für alle Yank-Operationen
vim.opt.clipboard = "unnamedplus"
```

Und am besten kitty als Terminal verwenden.
