#RequireAdmin
Global $crypterDir = 'C:\Users\Aditya\cryptoComputer\data2\Crypters\Good_Crypters\Alnazee Crypter v2.0\Alnazee Crypter v2.0\Alnazee-crypter-v2.0.exe'
Global $inputDir = 'C:\Users\Aditya\Desktop\Binaries\'
Global $outputDir = 'C:\Users\Aditya\Desktop\Output\'
Global $crypterName
Global $binaryName

; set the coordinates
AutoItSetOption('MouseCoordMode', 0)

; START
Run($crypterDir)

;add stub
WinWait('Form1')
WinActivate('Form1')
MouseClick('primary', 474, 282, 1, 0)
WinWait('Open')
WinActivate('Open')
MouseClick('primary', 254, 418, 1, 0)
Send('{BS 5}')
Send('C:\Users\Aditya\cryptoComputer\data2\Crypters\Good_Crypters\Alnazee Crypter v2.0\Alnazee Crypter v2.0\Stub.exe')
MouseClick('primary', 597, 447)



; wait for open dialog and input in file to load and click load
MouseClick('primary', 467, 227)
WinWait('Open')
WinActivate('Open')
MouseClick('primary', 360, 418, 1, 0)
$binaryName = 'putty - Copy.exe'
Send('{BS 9}')
Send($inputDir & $binaryName)
MouseClick('primary', 597, 447, 1, 0)


;click crypter
MouseClick('primary', 103, 440, 1, 0)

; save the file
WinWait('Save As')
WinActivate('Save As')
MouseClick('primary', 181, 377, 1, 0)
$crypterName = 'ALNAZEE-Crypter-v2.0'
Send($outputDir & $crypterName & '_' & $binaryName)
MouseClick('primary', 603, 452, 1, 0)

; close
WinClose('A L n A z E E - C R P T -2-')
MouseClick('primary', 520, 16, 1, 0)