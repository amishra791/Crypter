#RequireAdmin
Global $crypterDir = 'C:\Users\Aditya\cryptoComputer\data2\Crypters\Good_Crypters\2012 Crypter By N3oNight Cracked\2012 Crypter\2012 Crypter.exe'
Global $inputDir = 'C:\Users\Aditya\Desktop\Binaries\'
Global $outputDir = 'C:\Users\Aditya\Desktop\Output\'
Global $crypterName
Global $binaryName

; set the coordinates
AutoItSetOption('MouseCoordMode', 0)
Run($crypterDir)
WinWait('Microsoft .NET Framework')
WinActivate('Microsoft .NET Framework')
MouseClick('primary', 282, 131, 1, 0)

; click on Crypt option
MouseClick('primary', 432, 209, 1, 0)
; click open
MouseClick('primary', 462, 178, 1, 0)

; wait for open dialog and input in file to load and click load
WinWait('Open')
WinActivate('Open')
MouseClick('primary', 352, 421, 1, 0)
$binaryName = 'putty - Copy.exe'
Send($inputDir & $binaryName)
MouseClick('primary', 574, 450, 1, 0)
MouseClick('primary', 190, 466, 1, 0)
MouseClick('primary', 398, 464, 1, 0)

; save the file
WinWait('Save As')
WinActivate('Save As')
MouseClick('primary', 560, 379, 1, 0)
$crypterName = '2012 Crypter'
Send($outputDir & $crypterName & '_' & $binaryName)
MouseClick('primary', 592, 448, 1, 0)

; click on the 'ok' button
WinWait('2012 Crypter Private')
WinActivate('2012 Crypter Private')
MouseClick('primary', 126, 134, 1, 0)
;close the program
MouseClick('primary', 507, 11, 1, 0)









; wait for open dialog and input in file to load and click load




#comments-start
; #Start the crypter



#comments-end
