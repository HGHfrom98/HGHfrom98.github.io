;Column sizes 15W x 15.6H


;Global Variable declaration
Rows := 37						;<---- Set number of rows (horizontal) 37
Columns := 3					;<---- Set number of columns (verticle) 3

Y := -155
X := 3920
Z := 0


;App Pause
Esc::
	Suspend
	Pause,, 1
Return

;App Pause
Numpad1::
	Pause, On
return

;App Unpause
Numpad2::
	Pause, off
return

Numpad0::
Loop, %Columns%
{
	Loop, %Rows%
	{	
		;MouseMoves within cell A2, then sends ^c to copy the contents (SN)
		Coordmode, Mouse, Screen
		Click, %X%, %Y%
		Sleep, 500
		Click, %X%, %Y%
		Send, ^c
		X  += 120

	;Double MouseMoves the Search bar and pastes the last copied item.
		Coordmode, Mouse, Screen
		Click, 3700, 575
		Click, 3700, 575
		Sleep, 500
		Send, ^v

	;Selects the Search button.
		Coordmode, Mouse, Screen
		Click, 3775, 575
		Sleep 10000 					;<----May need to adjust sleep timer if load times are poor.

	;Selects and copies Asset Tag.
		Coordmode, Mouse, Screen
		Click, 2325, 815
		Click, 2325, 815
		Sleep 500
		Send, ^c
		
	;MouseMoves within next cell to paste copied asset tag.
		Coordmode, Mouse, Screen
		Click, %X%, %Y%
		Sleep, 500
		Click, %X%, %Y%
		Send, ^v
		X  += 120

	;Selects and copies RID.
		MouseClickDrag, Left, 105, 815, 400, 815
		Send, ^c
		
	;MouseMoves within next cell to paste copied RID.
		Coordmode, Mouse, Screen
		Click, %X%, %Y%
		Sleep, 500
		Click, %X%, %Y%
		Send, ^v
		X  += 120

	;Selects the Current Asset Tab.
		Coordmode, Mouse, Screen
		Click, 800, 920
		Sleep 500
		
	;Triple MouseMoves old device and then copies to clipboard.
		Click, 700, 1100
		Click, 700, 1100
		Click, 700, 1100
		Sleep, 500
		Send, ^c
		
	;MouseMoves within next cell to paste copied old model.
		Coordmode, Mouse, Screen
		Click, %X%, %Y%
		Sleep, 500
		Click, %X%, %Y%
		Send, ^v
		X -= 360
		Y += 21.1
		
	}
	X += 480
	Y := -156
}
	X := 3920
	
	;Lock the PC
	DllCall("LockWorkStation")

Return