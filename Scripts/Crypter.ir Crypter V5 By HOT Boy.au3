#RequireAdmin
Global $crypterDir = 'C:\Users\Aditya\cryptoComputer\data2\Crypters\Good_Crypters\Crypter.ir Crypter V5 By HOT Boy\Crypter.ir Crypter V5\Client.exe'
Global $inputDir = 'C:\Users\Aditya\Desktop\Binaries\'
Global $outputDir = 'C:\Users\Aditya\Desktop\Output\'
Global $crypterName
Global $binaryName

; set the coordinates
AutoItSetOption('MouseCoordMode', 0)

Run($crypterDir)

;open
WinWait('Crypter.ir Crypter V5 By HOT Boy')
WinActivate('Crypter.ir Crypter V5 By HOT Boy')
MouseClick('primary', 248, 293, 1, 0)

; wait for open dialog and input in file to load and click load
WinWait('Open')
WinActivate('Open')
MouseClick('primary', 328, 417, 1, 0)
$binaryName = 'putty - Copy.exe'
Send($inputDir & $binaryName)
MouseClick('primary', 587, 447, 1, 0)

;click crypter
WinWait('Crypter.ir Crypter V5 By HOT Boy')
WinActivate('Crypter.ir Crypter V5 By HOT Boy')
MouseClick('primary', 248, 328, 1, 0)

; save the file
WinWait('Save As')
WinActivate('Save As')
MouseClick('primary', 320, 379, 1, 0)
$crypterName = 'Crypter.ir Crypter V5 By HOT Boy'
Send($outputDir & $crypterName & '_' & $binaryName)
MouseClick('primary', 603, 452, 1, 0)

; close
WinClose('Done')
WinClose('Crypter.ir Crypter V5 By HOT Boy')