#Persistent
#SingleInstance Force
#InstallKeybdHook
#InstallMouseHook



Holding := 0


XButton2::
	if (Holding=0 && WinActive("ahk_class UnrealWindow")){
		Send {w down}
		Holding := 1
	}else{
		Send {w up}
		Holding := 0
	}
return


~MButton::
	Holding := 0
	if (WinActive("ahk_class UnrealWindow")){
		Sleep 300
		if (GetKeyState("MButton")){
			Send {e}
		}else{
			Send {f}
		}
	}

return