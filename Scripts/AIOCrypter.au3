#RequireAdmin
Global $crypterDir = 'C:\Users\Aditya\cryptoComputer\data2\Crypters\Good_Crypters\AIO Crypter\AIO Crypter\AIO.exe'
Global $inputDir = 'C:\Users\Aditya\Desktop\Binaries\'
Global $outputDir = 'C:\Users\Aditya\Desktop\Output\'
Global $crypterName
Global $binaryName

; set the coordinates
AutoItSetOption('MouseCoordMode', 0)

;START

Run($crypterDir)
WinWait('Microsoft .NET Framework')
WinActivate('Microsoft .NET Framework')
MouseClick('primary', 282, 131, 1, 0)

;select crypter option
WinWait('AIO')
WinActivate('AIO')
MouseClick('primary', 138, 38, 1, 0)

;open
WinWait('Crypter')
WinActivate('Crypter')
MouseClick('primary', 258, 41, 1, 0)

; wait for open dialog and input in file to load and click load
WinWait('Open')
WinActivate('Open')
MouseClick('primary', 286, 418, 1, 0)
$binaryName = 'putty - Copy.exe'
Send($inputDir & $binaryName)
MouseClick('primary', 594, 447, 1, 0)

;save
WinWait('Crypter')
WinActivate('Crypter')
MouseClick('primary', 142, 174, 1, 0)

; save the file
WinWait('Save As')
WinActivate('Save As')
MouseClick('primary', 213, 378, 1, 0)
$crypterName = 'AIO Crypter'
Send($outputDir & $crypterName & '_' & $binaryName)
MouseClick('primary', 603, 452, 1, 0)

; close app
WinClose('AIO')
WinClose('Crypter')