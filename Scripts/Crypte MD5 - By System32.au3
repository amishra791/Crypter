#RequireAdmin
#include <GuiConstantsEx.au3>
#include <File.au3>
#include <Array.au3>
#include <WinAPIShPath.au3>

Global $crypterDir = 'C:\Users\Aditya\cryptoComputer\data2\Crypters\Good_Crypters\Crypte MD5 By System32\Crypte MD5 - By System32\Crypte MD5 - By System32.exe'
Global $inputDir = 'C:\Users\Aditya\Desktop\Binaries\'
Global $crypterName

Func runCrypteMD5Crypter($testInput, $outputDir)
Local $FileList0 = _FileListToArray($testInput, Default, 2, False)
for $i = 1 To $FileList0[0]
	$path1 = $testInput & $FileList0[$i]
	Local $FileList1 = _FileListToArray($path1, Default, 2, False)
	for $j = 1 To $FileList1[0]
		$path2 = $path1 & '\' & $FileList1[$j]
		Local $FileList2 = _FileListToArray($path2, Default, 0, False)
		for $k = 1 To $FileList2[0]
			if $FileList2[$k] == 'binary' Then runCrypteMD5CrypterBinary($path2 & '\binary', $FileList0[$i] & '_' & $FileList1[$j] & '_binary', $outputDir)
		Next
	Next
Next

EndFunc


Func runCrypteMD5CrypterBinary($binaryAbsLocation, $binaryRelLocation, $outputDir)
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
MouseClick('primary', 271, 405, 1, 0)
Send($binaryAbsLocation)
MouseClick('primary', 587, 432, 1, 0)

;click crypter
WinWait('Crypte MD5 - By System32')
WinActivate('Crypte MD5 - By System32')
MouseClick('primary', 209, 91, 1, 0)

; save the file
WinWait('Select where to save...')
WinActivate('Select where to save...')
MouseClick('primary', 320, 365, 1, 0)
$crypterName = 'Crypte MD5 - By System32'
Send('{BS 20}')
Send($outputDir & $crypterName & '_' & $binaryRelLocation)
MouseClick('primary', 594, 435, 1, 0)

; close
WinClose('Success')
WinClose('Crypte MD5 - By System32')
EndFunc