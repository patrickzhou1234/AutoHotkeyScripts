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

PgUp::
MsgBox, 4, SystemWarning, Your Computer Has Been Infected Go To The Windows Antivirus Website to Fix It
IfMsgBox, No
    return
IfMsgBox, Yes
    Run, chrome.exe
    Sleep, 500
    Send, antiviruslink.com/windows10
    Send, {Enter down}
    Sleep, 10
    Send, {Enter up}
return

F9::
PixelSearch, Ax, Ay, 0, 0, 1900, 1000, 0x46A776, 3, Fast
if (ErrorLevel)
    if (ErrorLevel = 0)    
        MouseClick, left, %Px%, %Py%
else
    MouseClick, left, %Ax%, %Ay%
return
F5::
MouseGetPos, MouseX, MouseY
PixelGetColor, color, %MouseX%, %MouseY%
MsgBox The color at the current cursor position is %color%.
return
F6::
PixelSearch, Px, Py, 0, 0, 2000, 1100, 0x74C5F8, 3, Fast
Pxx:=Px+30
Pyy:=Py+40
MouseMove, %Pxx%, %Pyy%
Send, {LButton down}
Sleep, 30
Send, {LButton up}
return

Numpad1::YOffset=27
Numpad2::YOffset=18
Numpad3::YOffset=12
Numpad4::YOffset=7

Space::
PixelSearch, Px, Py, 0, 100, 1920, 1035, 0x74F8C5, 0, Fast
if (ErrorLevel != 0)
	PixelSearch, Px, Py, 0, 100, 1920, 1035, 0xB4B4B4, 0, Fast
	if (ErrorLevel = 0)
		Gosub, Shoot
	PixelSearch, Px, Py, 0, 100, 1920, 1035, 0x4B4B4B, 0, Fast
	if (ErrorLevel = 0)
		Gosub, Shoot
	PixelSearch, Px, Py, 0, 100, 1920, 1035, 0xFF7F31, 0, Fast
	if (ErrorLevel = 0)
		Gosub, Shoot
	PixelSearch, Px, Py, 0, 100, 1920, 1035, 0xC6C6C6, 0, Fast
	if (ErrorLevel = 0)
		Gosub, Shoot
	PixelSearch, Px, Py, 0, 100, 1920, 1035, 0x252525, 0, Fast
	if (ErrorLevel = 0)
		Gosub, Shoot
else Gosub, Shoot

Shoot:
	{
	Pxx:=Px+3
	Pyy:=Py+YOffset
	MouseMove, %Pxx%, %Pyy%
	Send, {LButton down}
	Sleep, 30
	Send, {LButton up}
	Exit
	}
return

F8::
PixelSearch, x1, y1, 0, 100, 1920, 1080, 0x5FA581, 0, Fast
if (ErrorLevel = 0)
{
    xdiff:=x1-960
    ydiff:=y1-540
    timeholdx:=(xdiff/230)*500
    timeholdy:=(ydiff/230)*500
    abstimeholdx:=Abs(timeholdx)
    abstimeholdy:=Abs(timeholdy)
    Send, {s down}
    Sleep, timeholdy
    Send, {s up}
    Sleep, 1
    Send, {d down}
    Sleep, timeholdx
    Send, {d up}
}
else
    Exit
ScrollLock::
Loop
{
PixelSearch, x1, y1, 0, 0, 1920, 1080, 0x74C5F8, 0, Fast
if (ErrorLevel = 0)
{
xdiff:=x1-960
ydiff:=y1-540
timeholdx:=(xdiff/230)*500
timeholdy:=(ydiff/230)*500
abstimeholdx:=Abs(timeholdx)
abstimeholdy:=Abs(timeholdy)
If timeholdx<0
    {
    abstimeholdx:=Abs(timeholdx)
    Send, {a down}
    Sleep, abstimeholdx
    Send, {a up}
    }
Else
    Send, {d down}
    Sleep, timeholdx
    Send, {d up}
If timeholdy<0
    {
    abstimeholdy:=Abs(timeholdy)
    Send, {w down}
    Sleep, abstimeholdy
    Send, {w up}
    }
Else
    Send, {s down}
    Sleep, timeholdy
    Send, {s up}
}
Else
    Exit
}
Return

F12::
PixelSearch, x1, y1, 0, 0, 1920, 1080, 0x5FA581, 0, Fast
if (ErrorLevel = 0)
{
xdiff:=x1-960
ydiff:=y1-540
timeholdx:=(xdiff/230)*500
timeholdy:=(ydiff/230)*500
abstimeholdx:=Abs(timeholdx)
abstimeholdy:=Abs(timeholdy)
diffyx:=abstimeholdy-abstimeholdx
diffxy:=abstimeholdx-abstimeholdy
If timeholdx<0
    {
    If timeholdy<0
        {
        If abstimeholdx<abstimeholdy
            {
            Send, {a down}
            Send, {w down}
            Sleep, abstimeholdx
            Send, {a up}
            Sleep, diffyx
            Send, {w up}
            }
        If abstimeholdx>abstimeholdy
            Send, {w down}
            Send, {a down}
            Sleep, abstimeholdy
            Send, {w up}
            Sleep, diffxy
            Send, {a up}
        }
    }
If timeholdx>0
    {
    If timeholdy>0
        {
        If abstimeholdx<abstimeholdy
            {
            Send, {d down}
            Send, {w down}
            Sleep, abstimeholdx
            Send, {d up}
            Sleep, diffyx
            Send, {w up}
            }
        If abstimeholdx>abstimeholdy
            Send, {w down}
            Send, {d down}
            Sleep, abstimeholdy
            Send, {w up}
            Sleep, diffxy
            Send, {d up}
        }
    }
If timeholdx<0
    {
    If timeholdy>0
        {
        If abstimeholdx<abstimeholdy
            {
            Send, {a down}
            Send, {s down}
            Sleep, abstimeholdx
            Send, {a up}
            Sleep, diffyx
            Send, {s up}
            }
        If abstimeholdx>abstimeholdy
            Send, {s down}
            Send, {a down}
            Sleep, abstimeholdy
            Send, {s up}
            Sleep, diffxy
            Send, {a up}
        }
    }
If timeholdx>0
    {
    If timeholdy<0
        {
        If abstimeholdx<abstimeholdy
            {
            Send, {d down}
            Send, {s down}
            Sleep, abstimeholdx
            Send, {d up}
            Sleep, diffyx
            Send, {s up}
            }
        If abstimeholdx>abstimeholdy
            Send, {s down}
            Send, {d down}
            Sleep, abstimeholdy
            Send, {s up}
            Sleep, diffxy
            Send, {d up}
        }
    }
Else
    Exit
}
Return

Esc::
Send, {ctrl down}f{ctrl up}
Sleep, 200
Send, Classroom
Sleep, 100
Send, {Enter down}
Sleep, 200
Send, {Enter up}
Sleep, 400
PixelSearch, x1, y1, 0, 0, 1920, 1080, 0x3296FF, 0, Fast
if (ErrorLevel = 0)
{
x1r:=x1+40
MouseMove, x1r, y1
Send, {LButton down}
Sleep, 30
Send, {LButton up}
}
else
{
exit
}
Return

PgDn::
Gui, Destroy
Gui, Color, Black
Gui, +AlwaysOnTop
Gui, Font, s13 cGreen, Calibri
Gui, Add, Button, x15 y50 w200 gPowerOptions, PowerOptions
Gui, Add, Button, x+20 w200 gLock, Lock
Gui, Add, Button, x+20 w200 gTaskManager, TaskManager
Gui, Add, Button, x+20 w100 gZoom, Zoom
Gui, Add, Button, x+20 w200 gSystemInformation, SystemInformation
Gui, Add, Button, x+20 w100 gCommandPrompt, CommandPrompt
Gui, Add, Button, x+20 w100 gChrome, Chrome
Gui, Add, Button, x+20 w100 gFileExplorer, FileExplorer
Gui, Add, Button, x+20 w200 gMicrosoftEdge, MicrosoftEdge
Gui, Add, Button, x+20 w200 gPowerShell, PowerShell
Gui, Add, Button, x15 y100 w200 gAutoHotKey, AutoHotKey
Gui, Add, Button, x+20 w200 gSwitchPrimaryMouse, SwitchPrimaryMouse
Gui, Add, Button, x+20 w200 gCalculator, Calculator
Gui, Add, Button, x+20 w200 gPaint, Paint
Gui, Add, Button, x+20 w200 gDailySetup, DailySetup
Gui, Add, Button, x860 y1000 w200 gCancel, Cancel
Gui, Font, s20 cRed, Calibri
Gui, Add, Text, x860 y15, Windows Menu
Gui, Show, w1920 h1100, Windows Menu
Return

PowerOptions:
  Gui, Destroy
  Gui, PowerOptions:New
  Gui, Show, w1920 h1100, PowerOptions
  Gui, +AlwaysOnTop
  Gui, Color, Black
  Gui, Font, s13 cGreen, Calibri
  Gui, Add, Button, x860 y350 w200 gShutDown, ShutDown
  Gui, Add, Button, y+20 w200 gSleep, Sleep
  Gui, Add, Button, y+20 w200 gRestart, Restart
  Gui, Add, Button, y+20 w200 gMonitorOff, MonitorOff
  Gui, Add, Button, x860 y1000 w200 gExit, Exit
  Gui, Font, s20 cRed, Verdana
  Gui, Add, Text, x860 y15, Power Options
  Return

  ShutDown:
    Gui, Destroy
    Shutdown, 5
  Return

  Sleep:
    Gui, Destroy
    DllCall("PowrProf\SetSuspendState", "int", 0, "int", 1, "int", 0)
  Return

  Restart:
    Gui, Destroy
    Shutdown, 6
  Return

  MonitorOff:
    Gui, Destroy
    SendMessage,0x112,0xF170,2,,Program Manager
  Return

  Exit:
    Gui, Destroy
  Return
Return

Lock:
Gui, Destroy
DllCall("LockWorkStation")
Return

TaskManager:
Gui, Destroy
Run, taskmgr.exe
Return

Zoom:
Gui, Destroy
Run, C:\Users\mwong\AppData\Roaming\Zoom\bin\Zoom.exe
Return

SystemInformation:
Gui, Destroy
Run, msinfo32.exe
Return

Chrome:
Gui, Destroy
Run, chrome.exe
Return

CommandPrompt:
Gui, Destroy
Run,cmd.exe
Return

FileExplorer:
Gui, Destroy
Run, explorer.exe
Return

MicrosoftEdge:
Gui, Destroy
Run, msedge.exe
Return

PowerShell:
Gui, Destroy
Run, powershell.exe
Return

AutoHotKey:
Gui, Destroy
Run, autohotkey.exe
Return

SwitchPrimaryMouse:
  Gui, Destroy
  Gui, MouseOptions:New
  Gui, Show, w1920 h1100, MouseOptions
  Gui, +AlwaysOnTop
  Gui, Color, Black
  Gui, Font, s13 cGreen, Calibri
  Gui, Add, Button, x750 y350 w200 gRightPrimary, RightPrimary
  Gui, Add, Button, x+20 w200 gLeftPrimary, LeftPrimary
  Gui, Add, Button, x860 y1000 w200 gClose, Close
  Gui, Font, s20 cRed, Verdana
  Gui, Add, Text, x800 y15, Primary Mouse Options
  Return

  RightPrimary:
  Gui, Destroy
  DllCall("SwapMouseButton",int,true)
  Return

  LeftPrimary:
  Gui, Destroy
  DllCall("SwapMouseButton",int,false)
  Return

  Close:
  Gui, Destroy
  Return
Return

Calculator:
Gui, Destroy 
Run, calc
Return

Paint:
Gui, Destroy
Run, mspaint
Return

DailySetup:
Gui, Destroy
Run, chrome.exe
Sleep, 400
WinMove, ahk_class Chrome_WidgetWin_1 ahk_exe chrome.exe,, 0, 0, 1920, 1048
Sleep, 400
Send {Ctrl down}l{Ctrl up}
Send, docs.google.com/spreadsheets/d/1NMH-V9BbTX0191VxnVfyzlmKqz_O-SiEPZcZm1TUm3A/
Send {Enter down}
Sleep, 400
Send {Enter up}
Send {Ctrl down}tl{Ctrl up}
Send, hangouts.google.com
Send {Enter down}
Sleep, 400
Send {Enter up}
Send {Ctrl down}tl{Ctrl up}
Send, classroom.google.com
Send {Enter down}
Sleep, 400
Send {Enter up}
Return

Cancel:
Gui, Destroy
Return
