#RequireAdmin
Global $crypterDir = 'C:\Users\Aditya\cryptoComputer\data2\Crypters\Good_Crypters\Crypt z0mBiE\z0mBiE TaBuK\z0mBiE TaBuK.exe'
Global $inputDir = 'C:\Users\Aditya\Desktop\Binaries\'
Global $outputDir = 'C:\Users\Aditya\Desktop\Output\'
Global $crypterName
Global $binaryName

; set the coordinates
AutoItSetOption('MouseCoordMode', 0)

Run($crypterDir)

;open stub
MouseClick('primary', 180, 230, 1, 0)

; wait for open dialog and input in file to load and click load
WinWait('Open')
WinActivate('Open')
MouseClick('primary', 337, 418, 1, 0)
$binaryName = 'putty - Copy.exe'
Send('{BS 7}')
Send('C:\Users\Aditya\cryptoComputer\data2\Crypters\Good_Crypters\Crypt z0mBiE\z0mBiE TaBuK\Stub.exe')
MouseClick('primary', 598, 447, 1, 0)

;open exe
MouseClick('primary', 469, 228, 1, 0)
; wait for open dialog and input in file to load and click load
WinWait('Open')
WinActivate('Open')
MouseClick('primary', 337, 418, 1, 0)
$binaryName = 'putty - Copy.exe'
Send('{BS 7}')
Send($inputDir & $binaryName)
MouseClick('primary', 598, 447, 1, 0)

;click crypter
MouseClick('primary', 87, 436, 1, 0)

; save the file
WinWait('Save As')
WinActivate('Save As')
MouseClick('primary', 267, 377, 1, 0)
$crypterName = 'Crypt z0mBiE'
Send($outputDir & $crypterName & '_' & $binaryName)
MouseClick('primary', 603, 452, 1, 0)

; close
WinWait('z0mBiE TaBuK')
WinActivate('z0mBiE TaBuK')
MouseClick('primary', 124, 135, 1, 0)
MouseClick('primary', 516, 17, 1, 0)