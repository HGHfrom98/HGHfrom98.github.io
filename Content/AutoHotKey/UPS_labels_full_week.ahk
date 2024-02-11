;Column sizes 15W x 15.6H


;Global Variable declaration
Rows := 37						;<---- Set number of rows (horizontal) 38
Columns := 1					;<---- Set number of columns (verticle) 14

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
			Sleep, 500
			Send ^c

	;OLD CODE
		
		;Clicks the Serial filter button.
			Coordmode, Mouse, Screen
			Click, 2500, 550
			Sleep, 1500

		;Clicks the text entry box to enter serial numbers.
			Coordmode, Mouse, Screen
			Click, 2500, 1445
			Send, ^v

		;Clicks the Filter button  on the filter dropdown.
			Click, Mouse, Screen
			Click, 2575, 1705

		;Clicks the record select box to the left of the record.
			Coordmode, Mouse, Screen
			Click, 725, 635
			
		;Clicks the Ship button.
			Coordmode, Mouse, Screen
			Click, 3350, 2200

		;Selects Yes to confirm.
			Coordmode, Mouse, Screen
			Click, 2300, 1425
			Sleep 1500

		;Selects the to Lease Company button.
			Coordmode, Mouse, Screen
			Click, 740, 1200
			
		;Selects the text field to the right of the Serial Number and enters the text "-AP Return".
			Coordmode, Mouse, Screen
			Click, 1800, 1200
			Sleep 500
			Send - AP Return

		;Selects the Continue button.
			Coordmode, Mouse, Screen
			Click, 3350, 2200

		;Selects Yes to continue.
			Coordmode, Mouse, Screen
			Click, 2200, 1425
			Sleep 1000

		;Selects Package Type dropdown.
			Coordmode, Mouse, Screen
			Click, 2930, 1650
			Sleep 500

		;Selects Package from the Package Dropdown.
			Coordmode, Mouse, Screen
			Click, 2910, 1850
			Sleep 1000
			
		;Selects the Contact text box, selects all, and copies it to the clipboard.
			Coordmode, Mouse, Screen
			Click, 1000, 1260
			Click, 1000, 1260
			Sleep 500
			Send, ^a
			Sleep 500
			Send, ^c

		;Moves the cursor to the Create Label button.
			Coordmode, Mouse, Screen
			Click, 3350, 2200
			
		;Selects Yes to continue.
			Coordmode, Mouse, Screen
			Click, 2300, 1425
		
	;OLD CODE
		
		;Waits until label is created and clicks outside of label popup into MITS window.
		Sleep, 15000
		Click, 50, 50
		Sleep, 500
		Click, 50, 50
		
		;Clicks the first "Ship Order" tab.
		Click, 700, 200
		Sleep, 500
		Click, 700, 200
		
		;Iterates to the next cell down
		Y += 21.1
	}
	X += 240
	Y := -155
}
	X := 3920
Return