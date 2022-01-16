# My Neovim Config
I am a casual Linux (Pop OS) user that doesn't much do programing, but I wanted to ditch VSCode so I opted in to transition to Neovim with Packer as a plugin manager

> Stable as much it is possible

![Screenshot of config](Preview.png)

## How to install my settings:
#### Instructions for linux  
(Not going to make this for other operating system)  
 [Follow instruction for Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)  
 [Follow instructions for Packer](https://github.com/wbthomason/packer.nvim#notices)
```
cd ~/ # to be sure that we are in the home/(user) directory
mkdir .config/ # if it doesn't already exists
cd ~/.config/ && git clone https://github.com/Battle420/neovim-config.git
mv neovim-config nvim #so that neovims knows what packs and config to use
# we need to quickly rename init.lua and make a new one with only the minimal or else everything won't load
mv init.lua old.lua && echo "require('plugins')" >> init.lua
nvim # Let it launch for the first time and when done, run :PackerUpdate when possible
```
After doing :PackerUpdate on Neovim, run the following:

`
rm init.lua && mv old.lua init.lua #put back in place the normal init.lua
`
# _That's all folks.
