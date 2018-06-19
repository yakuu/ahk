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
;==============================================================
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;==============================================================
; Checks if Trove is running 
#IfWinActive, Trove
{
;==============================================================
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;==============================================================
; Need some sort of delay trove plays a sound by pressing a key LUL
; [F2] Spamms 2
F2::
	Loop
		Send, 2
	Until, GetKeyState("Esc","P")
Return

;==============================================================
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;==============================================================
}