![alt text](heatherfield_demo.png)

#### About

A dark colourblind-friendly Neovim theme written in lua. For those who enjoy the purples, blues and pinks. Code skeleton taken from [tokyodark.nvim](https://github.com/tiagovla/tokyodark.nvim) 

#### Features

Supports plugins such as telescope and NvimTree. Works best with LSP Semantic Tokens.

#### Installation 

**Lazy**
```lua
  {
    'egerhether/heatherfield.nvim',
    config = function()
      require('heatherfield').setup(
        -- custom options
      ) -- calling setup is optional
    end,
  },
```
