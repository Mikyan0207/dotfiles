# Windows Terminal

Windows Terminal with Powershell v7.<br>
[JetBrains Mono Nerd Front](https://www.nerdfonts.com/font-downloads) for icons and ligatures.<br>
[Starship](https://starship.rs/) for customization which is faster and better than oh-my-posh.<br>
`ls` is replaced by [lsd](https://github.com/lsd-rs/lsd). (`exa` is not available on Windows. `lsd` can be slow on some systems, don't know why.)<br>
`cat` is replaced by [bat](https://github.com/sharkdp/bat).<br>
[GlazeWM](https://github.com/lars-berger/GlazeWM/tree/master) for tiling window managament.


## Theme

[Catppuccin Mocha](https://github.com/catppuccin/starship) for Starship.<br>
[Catppuccin Mocha](https://github.com/catppuccin/windows-terminal) for Windows Terminal.

In fact... [Catppuccin](https://github.com/catppuccin/) everywhere when available.


## Installation

- Download and install [Scoop](https://scoop.sh/)<br>
- Download and install [JetBrains Mono Nerd Front](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip)<br>
- Change your Windows Terminal font to JetBrains Mono.<br>
- Add Catppuccin Mocha to your Terminal config and set it as default.<br>
- Add `extras` bucket with: `scoop bucket add extras`<br>
- Install starship: `scoop install starship`<br>
- Install lsd: `scoop install lsd`<br>
- Install bat: `scoop install bat`<br>
- Install whkd: `scoop install glazewm`<br>
- Copy the powershell profile in your own powershell profile. `code $PROFILE` to open it with VS Code.<br>
- Copy configuration files in `$HOME/.config` except `Microsoft.PowerShell_profile.ps1`.<br>
- Replace `<YOUR_NAME>` in `Microsoft.PowerShell_profile.ps1` line 4 by what you want.<br>
- Replace `<REPLACE_WITH_USER>` in `Microsoft.PowerShell_profile.ps1` line 10 by your Windows username.<br>
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
