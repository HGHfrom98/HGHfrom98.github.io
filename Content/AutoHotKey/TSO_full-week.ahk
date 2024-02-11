;Column sizes 15W x 15.6H


;Global Variable declaration
Rows := 37						;<---- Set number of rows (horizontal) 37
Columns := 3					;<---- Set number of columns (verticle) 7

Y := -155
X := 3920
Z := 0


;App Suspend
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
			Sleep, 500
			Send, ^c
			X += 120
			
		;Double MouseMoves the Search bar and pastes the last copied item.
			Click, 3700, 575
			Click, 3700, 575
			Sleep, 500
			Send, ^v

		;Selects the Search button.
			Click, 3775, 575
			Sleep 500
		
		
		;MouseMoves within next cell to copy the new serial number.
			Click, %X%, %Y%
			Sleep, 500
			Click, %X%, %Y%
			Sleep, 500
			Send, ^c
			X -= 120
			Y += 21.1
			Sleep 10000 		;<----May need to adjust sleep timer if load times are poor. 10000

		;Clicks the Tech Sign Off button.
			Click, 3090, 800
			;Click, 3090, 900
			Sleep, 500
			;Click, 3090, 900
			Click, 3090, 800
			Sleep, 500
		
		;Clicks the Sign off date field and enters the current date.
			Click, 1900, 1040
			Click, 1900, 1040
			Click, 1900, 1040
			SendInput, %A_MM%/%A_DD%/%A_YYYY%
			Sleep, 500
		
		;Clicks the Technician drop down, sends H twice to select Hunter, then clicks outside of the drop down.
			Click, 1900, 1140
			Send, h
			Send, h
			Sleep, 500
			Click, 1600, 1140
		
		;Clicks the Serial Number field and pastes in the new serial.
			Click, 1900, 1650
			Click, 1900, 1650
			Click, 1900, 1650
			Sleep, 500
			Send ^v
			Sleep 500
		
		;Clicks the refresh server drop down and selects NO DATA TRANSFER.
			Click, 1900, 1750
			Sleep, 500
			Click, 1900, 1670
			Sleep, 500
		;Clicks the Update button.
			Click, 2220, 840
			Sleep, 5000
	}
	X += 240
	Y := -155
}
	X := 3920
	
	;Lock the PC
	DllCall("LockWorkStation")

Return