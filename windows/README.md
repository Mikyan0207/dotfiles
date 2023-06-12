# Windows Terminal

Windows Terminal with Powershell v7.<br>
[JetBrains Mono Nerd Front](https://www.nerdfonts.com/font-downloads) for icons and ligatures.<br>
[Starship](https://starship.rs/) for customization which is faster and better than oh-my-posh.<br>
`ls` is replaced by [lsd](https://github.com/lsd-rs/lsd). (`exa` is not available on Windows.)<br>
`cat` is replaced by [bat](https://github.com/sharkdp/bat).<br>
[whkd](https://github.com/LGUG2Z/whkd) global hotkeys daemon for Windows. (also required by komorebi.)<br>
[komorebi](https://github.com/LGUG2Z/komorebi) for tiling window managament.


## Theme

[Catppuccin Mocha](https://github.com/catppuccin/starship) for Starship.<br>
[Catppuccin Mocha](https://github.com/catppuccin/windows-terminal) for Windows Terminal.


## Installation

- Download and install [Scoop](https://scoop.sh/)<br>
- Download and install [JetBrains Mono Nerd Front](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip)<br>
- Change your Windows Terminal font to JetBrains Mono.<br>
- Add Catppuccin Mocha to your Terminal config and set it as default.<br>
- Add `extras` bucket with: `scoop bucket add extras`<br>
- Install starship: `scoop install starship`<br>
- Install lsd: `scoop install lsd`<br>
- Install bat: `scoop install bat`<br>
- Install whkd: `scoop install whkd`<br>
- Install komorebi: `scoop install komorebi`<br>
- Copy the powershell profile in your own powershell profile. `code $PROFILE` to open it with VS Code.<br>
- Copy configuration files in `$HOME/.config` except `Microsoft.PowerShell_profile.ps1`.<br>
- Replace `mikyan` in `Microsoft.PowerShell_profile.ps1` line 4 by what you want.<br>
- Start Windows Terminal 🚀


## Komorebi - Usage

Start: `k start`<br>
Stop:  `k stop`<br> 
<br>
For keybinds, see `whkdrc` file.
