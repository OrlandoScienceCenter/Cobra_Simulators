#Requires AutoHotkey v2.0

; Make all mouse coordinates relative to screen absolute coords
CoordMode "Mouse", "Screen"

; If doing startup manually: must use teamviewer and go onto second screen (To the right of the desktop that shows on the projector)
; Then Drag omnidome to the right to get it onto second screen

Sleep(10 * 1000)

; Kill existing in case we're restarting stuff
ProcessClose("obs64.exe")
ProcessClose("omnidome.exe")
ProcessClose("Prepar3D.exe")
Sleep(2 * 1000)
ProcessClose("obs64.exe")
ProcessClose("omnidome.exe")
ProcessClose("Prepar3D.exe")

Sleep(1 * 1000)

; ;Sleep 10 * 1000

Run("C:\Program Files\obs-studio\bin\64bit\obs64.exe", "C:\Program Files\obs-studio\bin\64bit\", "Min")

Sleep 3 * 1000

Run("C:\Users\Exhibits\Documents\Mapping Chain\omnidome\omnidome.exe", , "Max")

Sleep 7 * 1000

; Drag default projector in omnidome onto the output screen
MouseClickDrag "left", 1437, 306, 721, 569

Sleep 1 * 1000

; Click add source in omnidome
Click 79, 144

Sleep 1 * 1000

; Click spout
Click 72, 193

Sleep 1 * 1000

; Click arrange in omnidome
Click 1183, 70

Sleep 1 * 1000

; Select spout in the input list
Click 62, 458

Sleep 1 * 1000

; Select canvas type dropdown list in omnidome
Click 104, 160

Sleep 1 * 1000

; Select planar canvas type in omnidome
Click 89, 179

Sleep 1 * 1000

; Double click on length parameter in omnidome to edit number directly
Click 246, 188
Click 246, 188

Sleep(0.25 * 1000)
; Select all in textbox
Send("^a")
Sleep(0.25 * 1000)
Send("1")
Sleep(0.25 * 1000)
Send(".")
Sleep(0.25 * 1000)
Send("{Delete}") ; Required after the . because of omnidome UI weirdness
Sleep(0.25 * 1000)
Send("3")
Sleep(0.25 * 1000)
Send("{Enter}")
Sleep(0.25 * 1000)

; Double click on width parameter in omnidome to edit number directly
Click 243, 205
Click 243, 205

Sleep(0.25 * 1000)
; Select all in textbox
Send("^a")
Sleep(0.25 * 1000)
Send("3")
Sleep(0.25 * 1000)
Send("{Enter}")
Sleep(0.25 * 1000)

; Scroll down in canvas settings in omni
Click 282, 275

Sleep(0.25 * 1000)

; Double click on x parameter in omnidome to edit number directly
Click 60, 207
Click 60, 207

Sleep(0.25 * 1000)
; Select all in textbox
Send("^a")
Sleep(0.25 * 1000)
Send("9")
Sleep(0.25 * 1000)
Send("0")
Sleep(0.25 * 1000)
Send("{Enter}")
Sleep(0.25 * 1000)

; Double click on x parameter in omnidome to edit number directly
Click 216, 216
Click 216, 216

Sleep(0.25 * 1000)
; Select all in textbox
Send("^a")
Sleep(0.25 * 1000)
Send("2")
Sleep(0.25 * 1000)
Send("7")
Sleep(0.25 * 1000)
Send("0")
Sleep(0.25 * 1000)
Send("{Enter}")
Sleep(0.25 * 1000)

; Click translate
Click 139, 241

; Scroll down
Click 284, 289

; Double Click Z
Click 240, 238
Click 240, 238

; Change z to 1.98
Sleep(0.25 * 1000)
; Select all in textbox
Send("^a")
Sleep(0.25 * 1000)
Send("1")
Sleep(0.25 * 1000)
Send(".")
Sleep(0.25 * 1000)
Send("{Delete}")
Sleep(0.25 * 1000)
Send("9")
Sleep(0.25 * 1000)
Send("{Delete}")
Sleep(0.25 * 1000)
Send("8")
Sleep(0.25 * 1000)
Send("{Enter}")
Sleep(0.25 * 1000)

; Go to warp
Click 1308, 73

Sleep(0.25 * 1000)

; Make the dots look like exhibit tools folder on desktop > warp settings.png

; Row 01, Col 01
MouseClickDrag "left", 440, 415, 419, 434
Sleep(0.25 * 1000)
; Row 01, Col 02
MouseClickDrag "left", 627, 415, 609, 420
Sleep(0.25 * 1000)
; Row 01, Col 03
MouseClickDrag "left", 814, 415, 815, 423
Sleep(0.25 * 1000)
; Row 01, Col 04
MouseClickDrag "left", 1000, 415, 1012, 430
Sleep(0.25 * 1000)

; Row 02, Col 01
MouseClickDrag "left", 440, 520, 408, 559
Sleep(0.25 * 1000)
; Row 02, Col 02
MouseClickDrag "left", 627, 520, 612, 516
Sleep(0.25 * 1000)
; Row 02, Col 03
MouseClickDrag "left", 814, 520, 809, 514
Sleep(0.25 * 1000)
; Row 02, Col 04
MouseClickDrag "left", 1000, 520, 1034, 587
Sleep(0.25 * 1000)

; Row 03, Col 01
MouseClickDrag "left", 440, 625, 439, 667
Sleep(0.25 * 1000)
; Row 03, Col 02
MouseClickDrag "left", 627, 625, 620, 606
Sleep(0.25 * 1000)
; Row 03, Col 03
MouseClickDrag "left", 814, 625, 803, 607
Sleep(0.25 * 1000)
; Row 03, Col 04
MouseClickDrag "left", 1000, 625, 1006, 670
Sleep(0.25 * 1000)

; Row 04, Col 01
MouseClickDrag "left", 440, 730, 569, 803
Sleep(0.25 * 1000)
; Row 04, Col 02
MouseClickDrag "left", 627, 730, 635, 752
Sleep(0.25 * 1000)
; Row 04, Col 03
MouseClickDrag "left", 814, 730, 780, 736
Sleep(0.25 * 1000)
; Row 04, Col 04
MouseClickDrag "left", 1000, 730, 879, 818
Sleep(0.25 * 1000)

; Go to blend button
Click 1433, 72

Sleep(0.25 * 1000)

; top, left, right, all set to 0
MouseClickDrag "left", 200, 536, 22, 536
Sleep(0.25 * 1000)

MouseClickDrag "left", 200, 575, 22, 575
Sleep(0.25 * 1000)

MouseClickDrag "left", 200, 614, 22, 614
Sleep(0.25 * 1000)

; Click Live
Click 1851, 73

Sleep(0.25 * 1000)

; Start Prepar3D
Run("C:\Program Files\Lockheed Martin\Prepar3D v5\Prepar3D.exe", , )
Sleep(20 * 1000)

; Click middle of screen
Click(500, 500)
Sleep(1 * 1000)

SetTitleMatchMode 2

WinActivate("OBS")
Sleep(2 * 1000)
WinActivate("Lockheed")
Sleep(1 * 1000)

global stopLoop := 0

Loop
{
    If (stopLoop = 1)
        Break

    Click(957, 583)
    Sleep(1 * 1000)
}

Exit

Esc::
{
    global stopLoop
    
    if (stopLoop = 0)
    {
        stopLoop := 1
        return
    }

    if (stopLoop = 1)
    {
        stopLoop := 0
        return
    }
}