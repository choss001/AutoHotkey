#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

{LCtrl}::
Send, AutoHotkey
return

; CORRECT
LCtrl::
Send, AutoHotkey
return

BinarySearch(array, value) {
    left := 1
    right := array.Length()
    
    while left <= right {
        middle := (left + right) // 2
        if array[middle] < value {
            left := middle + 1
        } else if array[middle] > value {
            right := middle - 1
        } else {
            return middle
        }
    }
    
    return -1
}
