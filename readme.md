# .dotfiles for Windows

## Installation
Git clone the repo to your home directory.

To copy Windows Terminal configs, run:
`mklink "C:\Users\<username>\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" "C:\Users\<username>\.dotfiles\windows-terminal\settings.json"`

To copy Wezterm configs, run:
`mklink "C:\Users\<username>\.config\wezterm" "C:\Users\<username>\.dotfiles\wezterm`
