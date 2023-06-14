[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

$Env:USER = '<YOUR_NAME>'

function OverrideLs($args) {
    lsd --header --color=always --group-directories-first $args
}

function StartGlazeWM() {
    Start-Process -NoNewWindow glazewm.exe --config="C:\Users\<REPLACE_WITH_USER>\.config\glazewm.yaml"
}

function StopGlazeWM() {
    Stop-Process -Name 'glazewm'
}

Set-Alias -Name 'wm' -Value StartGlazeWM -Force -Option AllScope
Set-Alias -Name 'wm stop' -Value StopGlazeWM -Force -Option AllScope

Set-Alias -Name 'ls' -Value OverrideLs -Force -Option AllScope
Set-Alias -Name 'cat' -Value 'bat' -Force -Option AllScope

Invoke-Expression (&starship init powershell)
