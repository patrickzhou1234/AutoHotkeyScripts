#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
F10::
SoundGet, MuteState, Master, Mute
if MuteState=On 
{
    MuteState= it's muted
    send {Volume_Mute} ; if it's mute : unmute it
    SoundSet, 10
}

else MuteState=it's NOT muted 
Gui, Color, Blue
Gui, Font, s13 cGreen, Calibri
Gui, Font, s20 cRed, Helvetica
Gui, Add, Text, x860 y500, You Got Trolled Lmao!!
Gui, Add, Text, x860 y400, You Are Locked Out
Gui 1:Default
Gui, Show, w1920 h1110, Trolling AHK
Run, chrome.exe
Sleep, 400
SoundSet, 10
Send, https://www.youtube.com/watch?v=QtBDL8EiNZo
Sleep, 400
Send {Enter down}
Sleep, 100
Send {Enter up}
WinMove, ahk_class Chrome_WidgetWin_1 ahk_exe chrome.exe,, 60, 50, 500, 500
Gui 2:Default
Gui, Trolled:New
Gui, Show, w400 h400, Trolled
pic2 := "https://assets.stickpng.com/thumbs/580b585b2edbce24c47b2a2c.png"
Gui, Add, ActiveX, x0 y0 w400 h400, % "mshtml:<img src='" pic2 "' />"
WinWait, Trolled
x:=0
py:=20
y:=20
Loop, 101
{
py:=py*-1
y:=y+py
x:=x+15
WinMove, x, y
Sleep, 10
}
px:=20
x:=1520
y:=0
Loop, 44
{
px:=px*-1
x:=px+x
y:=y+15
WinMove, x, y
Sleep, 10
}
py:=20
Loop, 101
{
py:=py*-1
y:=py+y
x:=x-15
WinMove, x, y
Sleep, 10
}
px:=-20
y:=y+20
x:=x-10
Loop, 44
{
px:=px*-1
x:=x+px
y:=y-15
WinMove, x, y
Sleep, 10
}
Return
