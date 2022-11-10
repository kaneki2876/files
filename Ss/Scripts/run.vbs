
Set oShell = CreateObject ("Wscript.Shell") 
Dim strArgs
strArgs = "cmd /c filename.."
oShell.Run strArgs, 0, false