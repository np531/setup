# About
This is a collection of files and scripts that I use to setup my environment on a new installation. 
Currently only sets up my Vim keybindings (which is all I need :) ). In the future I will expand it to download basic packages and scripts that may be useful.

# Installation
1. Pull the setup script and run it

```
wget -qO - https://raw.githubusercontent.com/np531/setup/main/setup.sh | bash
```

# Coc Language Support
For syntax highlighting, install language-specific extensions like this:

```
:CocInstall coc-json coc-tsserver
```

Or you can configure a language server in your coc-settings.json(open it using :CocConfig) like this:

```
{
  "languageserver": {
    "go": {
      "command": "gopls",
      "rootPatterns": ["go.mod"],
      "trace.server": "verbose",
      "filetypes": ["go"]
    }
  }
}
```
