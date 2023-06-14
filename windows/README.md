# Windows



Windows Terminal with Powershell v7.<br>
[JetBrains Mono Nerd Front](https://www.nerdfonts.com/font-downloads) for icons and ligatures.<br>
[Starship](https://starship.rs/) for customization which is faster and better than oh-my-posh.<br>
`ls` is replaced by [lsd](https://github.com/lsd-rs/lsd). (`exa` is not available on Windows. `lsd` can be slow on some systems, don't know why.)<br>
`cat` is replaced by [bat](https://github.com/sharkdp/bat).<br>
[GlazeWM](https://github.com/lars-berger/GlazeWM/tree/master) for tiling window managament.<br>
[Flow Launcher](https://github.com/Flow-Launcher/Flow.Launcher) for files and apps search.<br>
[gitui](https://github.com/extrawurst/gitui) for git interface inside the terminal.


## Theme

[Catppuccin Mocha](https://github.com/catppuccin/starship) for Starship.<br>
[Catppuccin Mocha](https://github.com/catppuccin/windows-terminal) for Windows Terminal.

Well, [Catppuccin](https://github.com/catppuccin/) everywhere when available.


## Installation

- Download and install [Powershell 7.x](https://learn.microsoft.com/fr-fr/powershell/scripting/install/installing-powershell-on-windows)
- Launch Powershell 7 from Windows Terminal.
- Download and install [Scoop](https://scoop.sh/)
- Download and install [JetBrains Mono Nerd Front](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip)
- Copy the content of `terminal_settings.json` inside you `settings.json`.
- Add `extras` bucket with: `scoop bucket add extras`
- Install starship: `scoop install starship`
- Install lsd: `scoop install lsd`
- Install bat: `scoop install bat`
- Install GlazeWM: `scoop install glazewm`
- Install Flow Launcher: `scoop install flow-launcher`
- Copy the powershell profile in your own powershell profile. `code $PROFILE` to open it with VS Code.
- Copy configuration files in `$HOME/.config` except `Microsoft.PowerShell_profile.ps1`.
- Replace `<YOUR_NAME>` in `Microsoft.PowerShell_profile.ps1` line 4 by what you want.
- Replace `<REPLACE_WITH_USER>` in `Microsoft.PowerShell_profile.ps1` line 10 by your Windows username.
- Start Windows Terminal 🚀


## Commands

Some aliases and keybinds are available by default.<br>

| Command         	| Description              	|
|-----------------	|--------------------------	|
| `wm`            	| Start glazewm (Terminal) 	|
| `wm stop`       	| Stop glazewm (Terminal)  	|
| Alt + Shift + R 	| Reload glazewm config    	|
| Alt + Shift + E 	| Stop glazewm             	|

Check `glazewm.yaml` for all available keybinds.
