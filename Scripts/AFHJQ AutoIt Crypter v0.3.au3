#RequireAdmin
Global $crypterDir = 'C:\Users\Aditya\cryptoComputer\data2\Crypters\Good_Crypters\AFHJQ AutoIt Crypter v0.3\AFHJQ AutoIt Crypter v0.3\AFHJQ AutoIt Crypter.exe'
Global $inputDir = 'C:\Users\Aditya\Desktop\Binaries\'
Global $outputDir = 'C:\Users\Aditya\Desktop\Output\'
Global $crypterName
Global $binaryName

; set the coordinates
AutoItSetOption('MouseCoordMode', 0)


Run($crypterDir)
WinWait('AFHJQ Crypter < AutoIt Edition > v 0.3')
WinActivate('AFHJQ Crypter < AutoIt Edition > v 0.3')
MouseClick('primary', 325, 63, 1, 0)

; wait for open dialog and input in file to load and click load
WinWait('Open')
WinActivate('Open')
MouseClick('primary', 353, 420, 1, 0)
$binaryName = 'putty - Copy.exe'
Send("{BS 7}")
Send($inputDir & $binaryName)
MouseClick('primary', 587, 448, 1, 0)

WinWait('AFHJQ Crypter < AutoIt Edition > v 0.3')
WinActivate('AFHJQ Crypter < AutoIt Edition > v 0.3')
MouseClick('primary', 303, 195, 1, 0)

; save the file
WinWait('Save As')
WinActivate('Save As')
MouseClick('primary', 260, 380, 1, 0)
$crypterName = 'AFHJQ Crypter AutoItEditionv0.3'
Send('{BS 15}')
Send($outputDir & $crypterName & '_' & $binaryName)
MouseClick('primary', 603, 452, 1, 0)

; close app
WinWait('Done!')
WinActivate('Done!')
MouseClick('primary', 402, 136, 1, 0)
WinWait('AFHJQ Crypter < AutoIt Edition > v 0.3')
WinActivate('AFHJQ Crypter < AutoIt Edition > v 0.3')
MouseClick('primary', 394, 11, 1, 0)