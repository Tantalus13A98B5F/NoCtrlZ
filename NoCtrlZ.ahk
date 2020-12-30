#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; https://superuser.com/questions/268159/disable-ctrlz-shortcut-or-clear-undo-history-in-windows-explorer
#IfWinActive ahk_class CabinetWClass ; Explorer
^z::
#IfWinActive ahk_class ExploreWClass ; Explorer (legacy)
^z::
#IfWinActive ahk_class Progman ; Desktop
^z::
#IfWinActive ahk_class WorkerW ; Desktop shown by Win+D
^z::
    MsgBox Ctrl+Z has been disabled.
return
#IfWinActive