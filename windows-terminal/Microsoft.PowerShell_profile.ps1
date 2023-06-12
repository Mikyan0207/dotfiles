[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

$Env:KOMOREBI_CONFIG_HOME = 'C:\Users\flori\.config\komorebi'

function OverrideLs($args) {
    lsd --header --color=always --group-directories-first $args
}

Set-Alias -Name 'ls' -Value OverrideLs -Force -Option AllScope
Set-Alias -Name 'cat' -Value 'bat' -Force -Option AllScope

New-Alias -Name 'k' -Value 'komorebic' -Force -Option AllScope

Invoke-Expression (&starship init powershell)
