;#RequireAdmin
#include <GuiConstantsEx.au3>
#include <File.au3>
#include <Array.au3>

Global $crypterDir = 'C:\Users\Aditya\cryptoComputer\data2\Crypters\Good_Crypters\Cryptr\Cryptr\Cryptr.exe'
Global $inputDir = 'C:\Users\Aditya\Desktop\Binaries\'
Global $outputDir = 'C:\Users\Aditya\Desktop\Output\'
Global $crypterName
Global $binaryName

runCrypter()

Func runCrypter()

; set the coordinates
AutoItSetOption('MouseCoordMode', 0)

$testInput = 'C:\Users\Aditya\cryptoComputer\data2\Crypters\Benign_Exe\'
Local $FileList0 = _FileListToArray($testInput, Default, 2, True)
for $i = 1 To $FileList0[0]
	Local $FileList1 = _FileListToArray($FileList0[$i], Default, 2, True)
	_ArrayDisplay($FileList1, "fileList2")
	for $j = 1 To $FileList1[0]
		Local $FileList2 = _FileListToArray($FileList1[$j], Default, 1, False)
	Next
Next
Exit


Run($crypterDir)

;open
WinWait('Cryptr By AFHJQ')
WinActivate('Cryptr By AFHJQ')
MouseClick('primary', 395, 91, 1, 0)

; wait for open dialog and input in file to load and click load
WinWait('Open')
WinActivate('Open')
MouseClick('primary', 254, 420, 1, 0)
$binaryName = 'putty - Copy.exe'
Send('{BS 12}')
Send($inputDir & $binaryName)
MouseClick('primary', 597, 447, 1, 0)

;click crypter
WinWait('Cryptr By AFHJQ')
WinActivate('Cryptr By AFHJQ')
MouseClick('primary', 217, 160, 1, 0)

; save the file
WinWait('Save As')
WinActivate('Save As')
MouseClick('primary', 242, 379, 1, 0)
$crypterName = 'Cryptr By AFHJQ'
Send('{BS 20}')
Send($outputDir & $crypterName & '_' & $binaryName)
MouseClick('primary', 596, 445, 1, 0)

; close
WinClose('Done')
WinClose('Cryptr By AFHJQ')
EndFunc