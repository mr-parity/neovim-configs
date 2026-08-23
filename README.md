# Neovim Configuration

This repository contains my personal **Neovim configuration files**.

## Requirements

Before using this configuration, make sure the following dependencies are installed.

### 1. Nerd Font

Install a **Nerd Font** and configure it as the monospace font for your system or terminal.

A Nerd Font is required for proper display of icons and glyphs used by the Neovim configuration.

### 2. Tree-sitter CLI

Install the **Tree-sitter CLI system-wide**.

> Do **not** install Tree-sitter through npm.

#### Ubuntu / Debian

```bash
sudo apt install treesitter-cli
```

## Installation

Clone this repository and place the configuration in your Neovim config directory:

```bash
git clone <repository-url> ~/.config/nvim
```

Then start Neovim:

```bash
nvim
```

Neovim will install or initialize the configured plugins automatically, depending on the plugin manager used by the configuration.

## Notes

* Make sure your terminal is configured to use the installed Nerd Font.
* Ensure the Tree-sitter CLI is available in your system `PATH`.
* This configuration is intended for a modern Neovim installation.

