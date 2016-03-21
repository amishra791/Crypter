#RequireAdmin
#include <GuiConstantsEx.au3>
#include <File.au3>
#include <Array.au3>
Global $crypterDir = 'C:\Users\Aditya\cryptoComputer\data2\Crypters\Good_Crypters\AFHJQ AutoIt Crypter v0.3\AFHJQ AutoIt Crypter v0.3\AFHJQ AutoIt Crypter.exe'
Global $inputDir = 'C:\Users\Aditya\Desktop\Binaries\'
Global $outputDir = 'C:\Users\Aditya\Desktop\Output\'
Global $crypterName
Global $binaryName
Global $testInput = 'C:\Users\Aditya\cryptoComputer\data2\Crypters\Benign_Exe\'

runCrypter($testInput)


Func runCrypter($testInput)

Local $FileList0 = _FileListToArray($testInput, Default, 2, False)
for $i = 1 To $FileList0[0]
	$path1 = $testInput & $FileList0[$i]
	Local $FileList1 = _FileListToArray($path1, Default, 2, False)
	for $j = 1 To $FileList1[0]
		$path2 = $path1 & '\' & $FileList1[$j]
		Local $FileList2 = _FileListToArray($path2, Default, 0, False)
		for $k = 1 To $FileList2[0]
			if $FileList2[$k] == 'binary' Then runCrypterBinary($path2 & '\binary', $FileList0[$i] & '_' & $FileList1[$j] & '_binary')
		Next
	Next
Next
EndFunc

Func runCrypterBinary($binaryAbsLocation, $binaryRelLocation)
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
Send("{BS 7}")
Send($binaryAbsLocation)
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
Send($outputDir & $crypterName & '_' & $binaryRelLocation)
MouseClick('primary', 603, 452, 1, 0)

; close app
WinWait('Done!')
WinActivate('Done!')
MouseClick('primary', 402, 136, 1, 0)
WinWait('AFHJQ Crypter < AutoIt Edition > v 0.3')
WinActivate('AFHJQ Crypter < AutoIt Edition > v 0.3')
MouseClick('primary', 394, 11, 1, 0)
EndFunc