#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Skip YouTube advertisements automatically by pressing the "Skip Ad" button.
Loop {
    IfWinActive, ahk_class Chrome_WidgetWin_1  ; Change "Chrome_WidgetWin_1" to match the window class of your browser.
    {
        ; Wait for the "Skip Ad" button to appear.
        WinWaitActive, ahk_exe chrome.exe, YouTube - Google Chrome,, 5
        ControlClick, x500 y350, ahk_exe chrome.exe, YouTube - Google Chrome  ; Change "x500 y350" to match the coordinates of the "Skip Ad" button.
    }
    Sleep, 1000  ; Wait for 1 second before checking again.
}