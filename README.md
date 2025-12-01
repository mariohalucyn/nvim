## Requirements

Make sure the following dependencies are installed before using this configuration:

| Dependency | Minimum Version |
|-------------|-----------------|
| **[Neovim](https://neovim.io/)** | `0.11.2` or newer |
| **[Git](https://git-scm.com/)** | `2.19.0` or newer |
| **[curl](https://curl.se/)** | — |
| **[gcc](https://github.com/gcc-mirror/gcc)** | — |
| **[nvm](https://github.com/nvm-sh/nvm)** | — |
| **[Go](https://go.dev/)** | — |
| **[Lua](https://www.lua.org/)** | `5.1` or newer |
| **[xclip](https://github.com/astrand/xclip)** | - |

---

## Quick start
```bash
git clone https://github.com/mariohalucyn/nvim ~/.config/nvim
```

## Installation Linux / macOS

```bash
# 1. Backup your current Neovim config (optional)
mv ~/.config/nvim ~/.config/nvim.bak

# 2. Clone the repository
git clone https://github.com/mariohalucyn/nvim ~/.config/nvim

# 3. Open Neovim
nvim
```

## Installation Windows PowerShell

```bash
# 1. Backup your current Neovim config (optional)
Rename-Item "$env:LOCALAPPDATA\nvim" "$env:LOCALAPPDATA\nvim.bak" -ErrorAction SilentlyContinue

# 2. Clone the repository
git clone https://github.com/mariohalucyn/nvim "$env:LOCALAPPDATA\nvim"

# 3. In lua/plugins/undotree.lua, uncomment the following line so Undotree can work correctly on Windows:
vim.g.undotree_DiffCommand = "FC"

# 4. Open Neovim
nvim
```

## Directory structure
```
~/.config/nvim
├── init.lua                 # Main Neovim entry file
└── lua/
    ├── lazy/                # Lazy.nvim setup and plugin loader
    ├── kacper/              # Vim settings, remap, autocmds 
    └── plugins/             # Plugin definitions and configurations
```

## After install
```
# Check Neovim health
:checkhealth
```
