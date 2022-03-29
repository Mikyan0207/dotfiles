[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

function Load-Modules()
{
    Load-Module("posh-git");
    Load-Module("oh-my-posh");
    Load-Module("VSSetup");
    Load-Module("Terminal-Icons");
    Load-Module("PSReadLine");
    Load-Module("z");
    # Load-Module("PSFzf");
}

function Configure-Modules()
{
    # Load Prompt Config
    oh-my-posh --init --shell pwsh --config '~/.config/powershell/florian.omp.json' | Invoke-Expression
    
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

    # fzf
    # Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'
}

Load-Modules
Configure-Modules

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

function Load-Module($m)
{
    if (!(Get-Module | Where-Object {$_.Name -eq $m}))
    {
        # If module is not imported, but available on disk then import
        if (Get-Module -ListAvailable | Where-Object {$_.Name -eq $m})
        {
            Import-Module $m -Verbose
        }
        else
        {
            # If module is not imported, not available on disk, but is in online gallery then install and import
            if (Find-Module -Name $m | Where-Object {$_.Name -eq $m})
            {
                Install-Module -Name $m -Force -Verbose -Scope CurrentUser
                Import-Module $m -Verbose
            }
        }
    }
}