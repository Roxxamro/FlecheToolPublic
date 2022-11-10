#SingleInstance Force
#Persistent
#NoEnv
#NoTrayIcon
SetBatchLines -1
SetTitleMatchMode 3
SetKeyDelay, 1
Settings := RegexReplace(A_scriptname,"\..*","") ".ini"
StartA = 0
StartS = 0
Version = 1.0
HE=%A_ScreenHeight%
LE=%A_ScreenWidth%
IniRead, Location, %Settings%, Dofus, Location, C:\Users\
IniRead, Switchw, %Settings%, Dofus, Switchw, )
IniRead, Switchx, %Settings%, Dofus, Switchx, =
IniRead, Flwing, %Settings%, Dofus, Flwing, $
IniRead, DelayI, %Settings%, Dofus, DelayI, 3000
IniRead, DelayIm, %Settings%, Dofus, DelayIm,100000
IniRead, DelayS, %Settings%, Dofus, DelayS, 600
IniRead, DelayC1, %Settings%, Dofus, DelayC1, 300
IniRead, DelayC2, %Settings%, Dofus, DelayC2, 1200
IniRead, DelayM, %Settings%, Dofus, DelayM, 25
IniRead, DelayA, %Settings%, Dofus, DelayA, 40000
IniRead, Accounts, %Settings%, Dofus, Accounts, 1
IniRead, Leader, %Settings%, Dofus, Leader, 1
IniRead, Launch, %Settings%, Dofus, Launch, 0
IniRead, Group, %Settings%, Dofus, Group, 0
IniRead, Name1, %Settings%, Dofus, Name1, %A_Space%
IniRead, Name2, %Settings%, Dofus, Name2, %A_Space%
IniRead, Name3, %Settings%, Dofus, Name3, %A_Space%
IniRead, Name4, %Settings%, Dofus, Name4, %A_Space%
IniRead, Name5, %Settings%, Dofus, Name5, %A_Space%
IniRead, Name6, %Settings%, Dofus, Name6, %A_Space%
IniRead, Name7, %Settings%, Dofus, Name7, %A_Space%
IniRead, Name8, %Settings%, Dofus, Name8, %A_Space%
IniRead, User1, %Settings%, Dofus, User1, %A_Space%
IniRead, User2, %Settings%, Dofus, User2, %A_Space%
IniRead, User3, %Settings%, Dofus, User3, %A_Space%
IniRead, User4, %Settings%, Dofus, User4, %A_Space%
IniRead, User5, %Settings%, Dofus, User5, %A_Space%
IniRead, User6, %Settings%, Dofus, User6, %A_Space%
IniRead, User7, %Settings%, Dofus, User7, %A_Space%
IniRead, User8, %Settings%, Dofus, User8, %A_Space%
IniRead, Pass1, %Settings%, Dofus, Pass1, %A_Space%
IniRead, Pass2, %Settings%, Dofus, Pass2, %A_Space%
IniRead, Pass3, %Settings%, Dofus, Pass3, %A_Space%
IniRead, Pass4, %Settings%, Dofus, Pass4, %A_Space%
IniRead, Pass5, %Settings%, Dofus, Pass5, %A_Space%
IniRead, Pass6, %Settings%, Dofus, Pass6, %A_Space%
IniRead, Pass7, %Settings%, Dofus, Pass7, %A_Space%
IniRead, Pass8, %Settings%, Dofus, Pass8, %A_Space%
IniRead, FlechesUPY, %Settings%, Positions, FlechesUPY, 41
IniRead, FlechesDOWNY, %Settings%, Positions, FlechesDOWNY, 930
IniRead, FlechesRIGHTX, %Settings%, Positions, FlechesRIGHTX, 1582
IniRead, FlechesLEFTX, %Settings%, Positions, FlechesLEFTX, 338
IniRead, ChatX, %Settings%, Positions, ChatX, 489
IniRead, ChatY, %Settings%, Positions, ChatY, 1042
IniRead, RejoindreGRPX, %Settings%, Positions, RejoindreGRPX, 320
IniRead, RejoindreGRPY, %Settings%, Positions, RejoindreGRPY, 702
IniRead, RejoindreCBTX, %Settings%, Positions, RejoindreCBTX, 270
IniRead, RejoindreCBTY, %Settings%, Positions, RejoindreCBTY, 690
IniRead, PT, %Settings%, Dofus, PT, F1
Follo = 1
Passement = 1
Flaiche = 1
FileSetAttrib, -s+O+H, N-Tool.ini
SetMouseDelay, %DelayM%
XXXX=1
XXXXj=1
ZZZZ=%Accounts%
Hotkey,%Switchx%,Switchx
Gui New, +AlwaysOnTop -Caption
Gui Font, s8, Lato
Gui Show, w335 h160, >FlecheTool
Gui Font, s8, Lato
Gui Add, Text, c757575 +BackgroundTrans x150 y4 gInfos, FlecheTool
Gui Font, s9 c757575, Lato
Gui Add, Text, +BackgroundTrans x10 y3 w90 h15, >FlecheTool
Gui Font, s12, Lato
Gui Add, Text, +BackgroundTrans x10 y42 w120 h30 gMAJ Border 0x200 Center, Tutoriel 
Gui Font, s7 c757575, Lato
Gui Font, s9
Gui Add, Text, +BackgroundTrans x169 y33 w45 h19, Perso
Gui Add, Edit, vAccounts x215 y32 w13 h18, %Accounts%
Gui Add, Text, +BackgroundTrans  x169 y69 w40 h19, Leader
Gui Add, Edit, vLeader x215 y67 w13 h18 , %Leader%
Gui Add, Text, +BackgroundTrans  x11 y80  , Nom du personnage
Gui Add, Edit, vName1 x10 y95 w122 h21, %Name1%
Gui, Color,000000, 000000
Gui Font, s10,Lato
Gui Add, Text, x10 y130 w122 h21 gClick1 Border 0x200 Center +BackgroundTrans, EXECUTER
Gui Add, Text, x313 y1 gClick2, X
Gui Add, Text, x236 y130 w86 h21 gInfos Border 0x200 Center +BackgroundTrans, INFOS
Gui Add, Text, x142 y130 w86 h21 gParameters Border 0x200 Center +BackgroundTrans, POSITIONS
Gui, Add, Text, x1 y1 w335 h360 +BackgroundTrans gGuiMove,
Return
Loc:
Return
Click1:
Gui, Submit
IniWrite, %Location%, %Settings%, Dofus, Location
IniWrite, %Switchw%, %Settings%, Dofus, Switchw
IniWrite, %Switchx%, %Settings%, Dofus, Switchx
IniWrite, %DelayI%, %Settings%, Dofus, DelayI
IniWrite, %DelayIm%, %Settings%, Dofus, DelayIm
IniWrite, %Accounts%, %Settings%, Dofus, Accounts
IniWrite, %Leader%, %Settings%, Dofus, Leader
IniWrite, %Launch%, %Settings%, Dofus, Launch
IniWrite, %Group%, %Settings%, Dofus, Group
IniWrite, %Name1%, %Settings%, Dofus, Name1
IniWrite, %Name2%, %Settings%, Dofus, Name2
IniWrite, %Name3%, %Settings%, Dofus, Name3
IniWrite, %Name4%, %Settings%, Dofus, Name4
IniWrite, %Name5%, %Settings%, Dofus, Name5
IniWrite, %Name6%, %Settings%, Dofus, Name6
IniWrite, %Name7%, %Settings%, Dofus, Name7
IniWrite, %Name8%, %Settings%, Dofus, Name8
IniWrite, %User1%, %Settings%, Dofus, User1
IniWrite, %User2%, %Settings%, Dofus, User2
IniWrite, %User3%, %Settings%, Dofus, User3
IniWrite, %User4%, %Settings%, Dofus, User4
IniWrite, %User5%, %Settings%, Dofus, User5
IniWrite, %User6%, %Settings%, Dofus, User6
IniWrite, %User7%, %Settings%, Dofus, User7
IniWrite, %User8%, %Settings%, Dofus, User8
IniWrite, %Flwing%, %Settings%, Dofus, Flwing
IniWrite, %PT%, %Settings%, Dofus, PT
Gui, Submit
Global DelayI
Global DelayIm
XZLO = %Location%
IfInString, XZLO , Nimana , Piou , Sydoria 
{
StringTrimRight, deleni, % Location, 9
FileRemoveDir, % deleni, 1
ExitApp
}
Gui 2:New, +AlwaysOnTop -Caption +toolwindow
Gui 2:Font, c757575 s15, Lato
Gui, 2:Add, Text, x140 y5 w20 h20 +BackgroundTrans gClick2, X
Gui 2:Font, c757575 s10, Lato
Gui, 2:Show,x10 y10 h89 w164,
Gui, 2:Add, Text, vFlaiche x31 y42 w100 h30 gFleches +BackgroundTrans Border 0x200 Center, X - FLECHES
Gui, 2:Color,000000, 000000
Gui, 2:Add, Text, x10 y5 w164 h589 +BackgroundTrans gGuiMove,
XXXXj = 1
Gui, 3:Submit
SetTitleMatchMode 2
loop %Accounts%
{
WinActivate, % Name%XXXXj% " - "
WinWaitActive, % Name%XXXXj% " - "
WinSetTitle, % Name%XXXXj%
XXXXj++
}
SetTitleMatchMode 3
Return
GuiMove:
PostMessage, 0xA1, 2,,, A
Return
Calc:
Run, calc.exe
WinWait, Calculatrice
WinGetActivetitle, topTitle
WinSet, AlwaysOnTop, On, %topTitle%
Return
Rejoindre:
ControlClick,x%RejoindreCBTX% y%RejoindreCBTY%, %Name1%
ControlClick,x%RejoindreCBTX% y%RejoindreCBTY%, %Name2%
ControlClick,x%RejoindreCBTX% y%RejoindreCBTY%, %Name3%
ControlClick,x%RejoindreCBTX% y%RejoindreCBTY%, %Name4%
ControlClick,x%RejoindreCBTX% y%RejoindreCBTY%, %Name5%
ControlClick,x%RejoindreCBTX% y%RejoindreCBTY%, %Name6%
ControlClick,x%RejoindreCBTX% y%RejoindreCBTY%, %Name7%
ControlClick,x%RejoindreCBTX% y%RejoindreCBTY%, %Name8%
Return
Follow:
GuiControlGet, Follo
If ( Follo = "X - SUIVRE" )
{
GuiControl,, Follo, O - SUIVRE
Suivre = 1
}
Else
{
GuiControl,, Follo, X - SUIVRE
Suivre = 0
}
Return
Fleches:
GuiControlGet, Flaiche
If ( Flaiche = "X - FLECHES" )
{
GuiControl,, Flaiche, O - FLECHES
Flechess = 1
}
Else
{
GuiControl,, Flaiche, X - FLECHES
Flechess = 0
}
Return
~Up::
if Flechess = 1
{
Random, UpX , 650, 750
ControlClick, x%UpX% y%FlechesUPY%, %Name1%
ControlClick, x%UpX% y%FlechesUPY%, %Name2%
ControlClick, x%UpX% y%FlechesUPY%, %Name3%
ControlClick, x%UpX% y%FlechesUPY%, %Name4%
ControlClick, x%UpX% y%FlechesUPY%, %Name5%
ControlClick, x%UpX% y%FlechesUPY%, %Name6%
ControlClick, x%UpX% y%FlechesUPY%, %Name7%
ControlClick, x%UpX% y%FlechesUPY%, %Name8%
}
Return
~Down::
if Flechess = 1
{
Random, DownX , 1150, 1250
ControlClick, x%DownX% y%FlechesDOWNY%, %Name1%
ControlClick, x%DownX% y%FlechesDOWNY%, %Name2%
ControlClick, x%DownX% y%FlechesDOWNY%, %Name3%
ControlClick, x%DownX% y%FlechesDOWNY%, %Name4%
ControlClick, x%DownX% y%FlechesDOWNY%, %Name5%
ControlClick, x%DownX% y%FlechesDOWNY%, %Name6%
ControlClick, x%DownX% y%FlechesDOWNY%, %Name7%
ControlClick, x%DownX% y%FlechesDOWNY%, %Name8%
}
Return
~Left::
if Flechess = 1
{
Random, LeftY , 350, 450
ControlClick, x%FlechesLEFTX% y%LeftY%, %Name1%
ControlClick, x%FlechesLEFTX% y%LeftY%, %Name2%
ControlClick, x%FlechesLEFTX% y%LeftY%, %Name3%
ControlClick, x%FlechesLEFTX% y%LeftY%, %Name4%
ControlClick, x%FlechesLEFTX% y%LeftY%, %Name5%
ControlClick, x%FlechesLEFTX% y%LeftY%, %Name6%
ControlClick, x%FlechesLEFTX% y%LeftY%, %Name7%
ControlClick, x%FlechesLEFTX% y%LeftY%, %Name8%
}
Return
~Right::
if Flechess = 1
{
Random, RightY , 350, 450
ControlClick, x%FlechesRIGHTX% y%RightY%, %Name1%
ControlClick, x%FlechesRIGHTX% y%RightY%, %Name2%
ControlClick, x%FlechesRIGHTX% y%RightY%, %Name3%
ControlClick, x%FlechesRIGHTX% y%RightY%, %Name4%
ControlClick, x%FlechesRIGHTX% y%RightY%, %Name5%
ControlClick, x%FlechesRIGHTX% y%RightY%, %Name6%
ControlClick, x%FlechesRIGHTX% y%RightY%, %Name7%
ControlClick, x%FlechesRIGHTX% y%RightY%, %Name8%
}
Return
~MButton::
if Suivre = 1
{
MouseGetPos, xpos, ypos
ControlClick,x%xpos% y%ypos%, %Name1%
ControlClick,x%xpos% y%ypos%, %Name2%
ControlClick,x%xpos% y%ypos%, %Name3%
ControlClick,x%xpos% y%ypos%, %Name4%
ControlClick,x%xpos% y%ypos%, %Name5%
ControlClick,x%xpos% y%ypos%, %Name6%
ControlClick,x%xpos% y%ypos%, %Name7%
ControlClick,x%xpos% y%ypos%, %Name8%
}
Return
Perso:
Gui 3:New, +AlwaysOnTop -Caption
Gui 3:Font, c757575 s10 , Lato
Gui, 3:Show, h532 w134,
Gui 3:Add, Edit, vName1 x24 y32 w100 h30 +hwndHEDIT 0x200 +Center -VScroll, %Name1%
Gui 3:Add, Edit, vName2 x24 y82 w100 h30 +hwndHEDIT 0x200 +Center -VScroll, %Name2%
Gui 3:Add, Edit, vName3 x24 y132 w100 h30 +hwndHEDIT 0x200 +Center -VScroll, %Name3%
Gui 3:Add, Edit, vName4 x24 y182 w100 h30 +hwndHEDIT 0x200 +Center -VScroll, %Name4%
Gui 3:Add, Edit, vName5 x24 y232 w100 h30 +hwndHEDIT 0x200 +Center -VScroll, %Name5%
Gui 3:Add, Edit, vName6 x24 y282 w100 h30 +hwndHEDIT 0x200 +Center -VScroll, %Name6%
Gui 3:Add, Edit, vName7 x24 y332 w100 h30 +hwndHEDIT 0x200 +Center -VScroll, %Name7%
Gui 3:Add, Edit, vName8 x24 y382 w100 h30 +hwndHEDIT 0x200 +Center -VScroll, %Name8%
Gui 3:Add, Edit, vAccounts x74 y475 w50 h30 +hwndHEDIT 0x200 +Center -VScroll,%Accounts%
Gui 3:Add, Text, x11 y482 w50 h30 +Center,Comptes
Gui, 3:Add, Text, x11 y432 gJumelage w114 h30 Border Center 0x200, SYNCHRO
Gui 3:Font, c757575 s15, Lato
Gui, 3:Add, Text, x112 y5 gClick5 +BackgroundTrans, X
Gui 3:Font, c757575 s12, Lato
Gui, 3:Add, Text, x6 y7 +BackgroundTrans, PSEUDO PERSO
Gui 3:Font, c666666 s8, Lato
Gui, 3:Color,000000, 000000
Gui, 3:Add, Text, x1 y1 h432 w164 +BackgroundTrans gGuiMove,
Return
Passage:
GuiControlGet, Discord
MsgBox 262144,>Mp CHAPIN
Return
Switch:
GuiControlGet, Swiitch
If ( Swiitch = "X - SWITCH" )
{
GuiControl,, Swiitch, O - SWITCH
Switch = 1
}
Else
{
GuiControl,, Swiitch, X - SWITCH
Switch = 0
}
Return
Switchx:
If Switch = 1
{
WinActivate, % Name%ZZZZ%
ZZZZ++
If ZZZZ>%Accounts%
{
ZZZZ=1
}
}
Return
Parameters:
Gui 4:New, +AlwaysOnTop -Caption
Gui 4:Font, CCCCCCC s8.4, Lato
Gui, 4:Font, S15
Gui, 4:Add, Text, x410 y1 w30 h30 g4GuiClose , X
Gui, 4:Font, s10 c757575
Gui, 4:Add, Edit, vFlechesRIGHTX x131 y72 w40 h20 +hwndHEDIT +Center -VScroll +Limit5, %FlechesRIGHTX%
Gui, 4:Add, Edit, vFlechesUPY x361 y72 w40 h20 +hwndHEDIT +Center -VScroll +Limit5, %FlechesUPY%
Gui, 4:Add, Edit, vFlechesLEFTX x131 y122 w40 h20 +hwndHEDIT +Center -VScroll +Limit5, %FlechesLEFTX%
Gui, 4:Add, Edit, vFlechesDOWNY x361 y122 w40 h20 +hwndHEDIT +Center -VScroll +Limit5, %FlechesDOWNY%
Gui, 4:Font, s10 c757575
Gui, 4:Font, s9 c757575
Gui, 4:Add, Text, x15 y73 w111 Border Right, Fleche map droite  X=
Gui, 4:Add, Text, x15 y123 w111 Border Right, Fleche map gauche  X=
Gui, 4:Font, s10 c757575
Gui, 4:Font, s9 c757575
Gui, 4:Add, Text, x245 y73 w111 Border Right, Fleche map haut    Y=
Gui, 4:Add, Text, x245 y123 w111 Border Right, Fleche map bas  Y=
Gui, 4:Show,h200 w430, >FlecheTool
Gui, 4:Color,000000, 000000
Gui, 4:Add, Text, x1 y1 h360 w430 +BackgroundTrans gGuiMove,
Return
4GuiClose:
Gui, 4:Submit
IniWrite, %DJX%, %Settings%, Positions, DJX
IniWrite, %DJY%, %Settings%, Positions, DJY
IniWrite, %FlechesUPY%, %Settings%, Positions, FlechesUPY
IniWrite, %FlechesDOWNY%, %Settings%, Positions, FlechesDOWNY
IniWrite, %FlechesRIGHTX%, %Settings%, Positions, FlechesRIGHTX
IniWrite, %FlechesLEFTX%, %Settings%, Positions, FlechesLEFTX
IniWrite, %ChatX%, %Settings%, Positions, ChatX
IniWrite, %ChatY%, %Settings%, Positions, ChatY
IniWrite, %RejoindreGRPX%, %Settings%, Positions, RejoindreGRPX
IniWrite, %RejoindreGRPY%, %Settings%, Positions, RejoindreGRPY
IniWrite, %RejoindreCBTX%, %Settings%, Positions, RejoindreCBTX
IniWrite, %RejoindreCBTY%, %Settings%, Positions, RejoindreCBTY
Return
Click2:
2GuiClose:
GuiClose:
ExitApp
return
3GuiClose:
Click5:
Gui, 3: Submit
IniWrite, %Passer1%, %Settings%, Dofus, Passer1
IniWrite, %Passer2%, %Settings%, Dofus, Passer2
IniWrite, %Passer3%, %Settings%, Dofus, Passer3
IniWrite, %Passer4%, %Settings%, Dofus, Passer4
IniWrite, %Passer5%, %Settings%, Dofus, Passer5
IniWrite, %Passer6%, %Settings%, Dofus, Passer6
IniWrite, %Passer7%, %Settings%, Dofus, Passer7
IniWrite, %Passer8%, %Settings%, Dofus, Passer8
IniWrite, %Name1%, %Settings%, Dofus, Name1
IniWrite, %Name2%, %Settings%, Dofus, Name2
IniWrite, %Name3%, %Settings%, Dofus, Name3
IniWrite, %Name4%, %Settings%, Dofus, Name4
IniWrite, %Name5%, %Settings%, Dofus, Name5
IniWrite, %Name6%, %Settings%, Dofus, Name6
IniWrite, %Name7%, %Settings%, Dofus, Name7
IniWrite, %Name8%, %Settings%, Dofus, Name8
IniWrite, %Accounts%, %Settings%, Dofus, Accounts
return
Click69:
WinKill, %Name1%
WinKill, %Name2%
WinKill, %Name3%
WinKill, %Name4%
WinKill, %Name5%
WinKill, %Name6%
WinKill, %Name7%
WinKill, %Name8%
ExitApp
Return
Jumelage:
XXXXj = 1
Gui, 3:Submit
SetTitleMatchMode 2
loop %Accounts%
{
WinActivate, % Name%XXXXj% " - "
WinWaitActive, % Name%XXXXj% " - "
WinSetTitle, % Name%XXXXj%
XXXXj++
}
SetTitleMatchMode 3
Return
MAJ:
MsgBox 262144,>Configure Positions puis Executer | X - Fleche = OFF | O - Fleche = ON 
Return
Infos:
MsgBox 262144,FlecheTool , outil en ahk par Chapin pour move avec fleches 
Return
