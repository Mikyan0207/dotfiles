[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# Prompt
Import-Module posh-git
Import-Module oh-my-posh
#Set-PoshPrompt bubblesextra

# Visual Studio
Import-Module VSSetup

# Load Prompt Config
oh-my-posh --init --shell pwsh --config '~/.config/powershell/florian.omp.json' | Invoke-Expression

# Icons
Import-Module Terminal-Icons

# PSReadLine
$PSReadLineOptions = @{
    EditMode = "Emacs"
    BellStyle = "None"
    PredictionSource = "History"
    HistoryNoDuplicates = $true
    HistorySearchCursorMovesToEnd = $true
    Colors = @{
        "InlinePrediction" = "#B6B8BA"
    }
}
Set-PSReadLineOption @PSReadLineOptions

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Alias
Set-Alias -Name ll -Value ls
Set-Alias -Name g -Value git
Set-Alias -Name cl -Value clear
Set-Alias -Name gs -Value GitStatus
Set-Alias -Name c -Value OpenCode
Set-Alias -Name vs -Value OpenVS

# Utilities
function which ($command)
{
    Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

function GitStatus { git status }

function OpenCode { code $args }

function OpenVS($solution)
{
    $vsPath = Get-VSSetupInstance | Select-Object -ExpandProperty InstallationPath
    if ([string]::IsNullOrEmpty($vsPath)) { return }
    $solutionPath = Resolve-Path -LiteralPath $solution
    & "$vsPath\Common7\IDE\devenv.exe" "$solutionPath"
}