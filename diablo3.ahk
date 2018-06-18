; ^ ctrl
; Lbutton = left mouse button

; ##### RandomStuff
;	KeyIsDown := GetKeyState(KeyName , Mode)
;	Mode:
; 	P: Retrieve the physical state (i.e. whether the user is physically holding it down). 
;	The physical state of a key or mouse button will usually be the same as the logical state unless the keyboard and/or mouse hooks are installed,
;	in which case it will accurately reflect whether or not the user is physically holding down the key or 
;	button (as long as it was pressed down while the script was running). 
;	You can determine if your script is using the hooks via the KeyHistory command or menu item. 
;	You can force the hooks to be installed by adding the #InstallKeybdHook and/or #InstallMouseHook directives to the script.

;	T: Retrieve the toggle state (only valid for keys that can be toggled such as CapsLock, NumLock, ScrollLock, and Insert). 
;	A retrieved value of 1 (true) means the key is "on", while 0 (false) means it's "off".
; ##### Endof RandomStuff

;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;==============================================================
; Checks if Diablo 3 is running 
#IfWinActive ahk_class D3 Main Window Class
{
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;==============================================================
; [Ctrl + Left mouse button] -> Drop items to the ground
^Lbutton::
{
click
sleep 25
MouseGetPos, x_initial, y_initial
MouseClick, left, 996, 573
sleep 25
MouseMove, %x_initial%, %y_initial%, 0
sleep 25
}
return
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;==============================================================
; [F1] To start escape to end the loop that spams buttons: 4
F1::
	Loop
		Send, 4
	Until, GetKeyState("F1","P")
Return
;==============================================================
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;==============================================================
; [F2] Spamms right click for kadala
F2::
	Loop
		MouseClick, right,,
	Until, GetKeyState("F2","P")
Return
;==============================================================
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;==============================================================
; [F3] To start escape to end the loop that spams buttons: 2,3,4
F3::
	Loop
		Send, 234
	Until, GetKeyState("F3","P")
Return
;==============================================================
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

}