#RequireAdmin
Global $crypterDir = 'C:\Users\Aditya\cryptoComputer\data2\Crypters\Good_Crypters\Alnazee Crypter v1.0\Alnazee Crypter v1.0\Alnazee-crypter-v1.0.exe'
Global $inputDir = 'C:\Users\Aditya\Desktop\Binaries\'
Global $outputDir = 'C:\Users\Aditya\Desktop\Output\'
Global $crypterName
Global $binaryName

; set the coordinates
AutoItSetOption('MouseCoordMode', 0)

Run($crypterDir)

;open
WinWait('A L N A Z E E - Crypter - v1.0')
WinActivate('A L N A Z E E - Crypter - v1.0')
MouseClick('primary', 524, 82, 1, 0)

; wait for open dialog and input in file to load and click load
WinWait('Choose Your File..')
WinActivate('Choose Your File..')
MouseClick('primary', 262, 418, 1, 0)
$binaryName = 'putty - Copy.exe'
Send($inputDir & $binaryName)
MouseClick('primary', 587, 447, 1, 0)

;click crypter
WinWait('A L N A Z E E - Crypter - v1.0')
WinActivate('A L N A Z E E - Crypter - v1.0')
MouseClick('primary', 259, 204, 1, 0)

; save the file
WinWait('Saves as')
WinActivate('Saves as')
MouseClick('primary', 235, 379, 1, 0)
$crypterName = 'ALNAZEE-Crypter-v1.0'
Send($outputDir & $crypterName & '_' & $binaryName)
MouseClick('primary', 603, 452, 1, 0)

; close
WinWait('Alnazee-crypter-v1.0')
WinActivate('Alnazee-crypter-v1.0')
MouseClick('primary', 238, 133, 1, 0)
WinClose('A L N A Z E E - Crypter - v1.0')