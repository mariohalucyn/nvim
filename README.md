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
| **[ripgrep](https://github.com/astrand/xclip)** | — |
| **[xclip](https://github.com/astrand/xclip)** | — |
| **[tree-sitter-cli](https://github.com/tree-sitter/tree-sitter)** | — |

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
