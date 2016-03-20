#RequireAdmin
Global $crypterDir = 'C:\Users\Aditya\cryptoComputer\data2\Crypters\Good_Crypters\Crypt By TeaM EjraM\Crypt By TeaM EjraM\Crypt By TeaM EjraM.exe'
Global $inputDir = 'C:\Users\Aditya\Desktop\Binaries\'
Global $outputDir = 'C:\Users\Aditya\Desktop\Output\'
Global $crypterName
Global $binaryName

; set the coordinates
AutoItSetOption('MouseCoordMode', 0)

Run($crypterDir)

; wait for main screen and click 'open'
$crypterName = 'Crypt By TeaM EjraM'
WinWait($crypterName)
WinActivate($crypterName)
MouseClick('primary', 276, 202, 1, 0)

; wait for open dialog and input in file to load and click load
WinWait('Open')
WinActivate('Open')
MouseClick('primary', 353, 372, 1, 0)
$binaryName = 'putty - Copy.exe'
Send($inputDir & $binaryName)
MouseClick('primary', 550, 372, 1, 0)

; click on 'save'
WinWait($crypterName)
WinActivate($crypterName)
MouseClick('primary', 41, 232, 1, 0)

; save the file
WinWait('Save As')
WinActivate('Save As')
MouseClick('primary', 402, 372, 1, 0)
Send($outputDir & $crypterName & '_' & $binaryName)
MouseClick('primary', 550, 372, 1, 0)

; click on the 'ok' button
WinWait('Crypt by team ejram')
WinActivate('Crypt by team ejram')
MouseClick('primary', 50, 90, 1, 0)

; close the program
WinWait($crypterName)
WinActivate($crypterName)
MouseClick('primary', 282, 382, 1, 0)