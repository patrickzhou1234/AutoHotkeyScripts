#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
XButton2:: 
Loop, 6
{
Send, {LButton down}
Sleep, 30
Send, {LButton up}
Sleep, 300
}
return
XButton1:: 
Send, {LButton down}
Sleep, 3000
Send, {LButton up}
return
F1::
Loop,
{
if  GetKeyState("F2", "P")
        break
MouseMove, 960, 360
Sleep, 10
MouseMove, 640, 720
Sleep, 10
MouseMove, 1280, 720
Sleep, 10
}
return
F3::
xaddvar1:=-100
xaddvar2:=100
MouseGetPos, xpos, ypos
Loop, 
{
if GetKeyState("F4", "P")
        break
xaddvar1:=xaddvar1*-1
xaddvar2:=xaddvar2*-1
xmin:=200+xaddvar1
xadd:=200+xaddvar2
MouseMove, xpos+xadd, ypos
Sleep, 50
MouseMove, xpos-xmin, ypos
}
return
