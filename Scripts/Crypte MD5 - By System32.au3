#RequireAdmin
Global $crypterDir = 'C:\Users\Aditya\cryptoComputer\data2\Crypters\Good_Crypters\Crypte MD5 By System32\Crypte MD5 - By System32\Crypte MD5 - By System32.exe'
Global $inputDir = 'C:\Users\Aditya\Desktop\Binaries\'
Global $outputDir = 'C:\Users\Aditya\Desktop\Output\'
Global $crypterName
Global $binaryName

; set the coordinates
AutoItSetOption('MouseCoordMode', 0)

Run($crypterDir)

;open
WinWait('Crypte MD5 - By System32')
WinActivate('Crypte MD5 - By System32')
MouseClick('primary', 53, 56, 1, 0)

; wait for open dialog and input in file to load and click load
WinWait('Choose the file')
WinActivate('Choose the file')
MouseClick('primary', 294, 419, 1, 0)
$binaryName = 'putty - Copy.exe'
Send($inputDir & $binaryName)
MouseClick('primary', 587, 447, 1, 0)

;click crypter
WinWait('Crypte MD5 - By System32')
WinActivate('Crypte MD5 - By System32')
MouseClick('primary', 209, 91, 1, 0)

; save the file
WinWait('Select where to save...')
WinActivate('Select where to save...')
MouseClick('primary', 320, 379, 1, 0)
$crypterName = 'Crypte MD5 - By System32'
Send($outputDir & $crypterName & '_' & $binaryName)
MouseClick('primary', 603, 452, 1, 0)

; close
WinClose('Success')
WinClose('Crypte MD5 - By System32')