#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

q::
Click
Sleep 400
Click
Sleep 400
Click
Sleep 400
Click
Sleep 1000
Send, r
Sleep 200
Send, r
Sleep 500
Click

return