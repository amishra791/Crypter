#RequireAdmin
#include <GuiConstantsEx.au3>
#include <File.au3>
#include <Array.au3>
#include <WinAPIShPath.au3>

Global $crypterDir = 'C:\Users\Aditya\cryptoComputer\data2\Crypters\Good_Crypters\Alnazee Crypter v1.0\Alnazee Crypter v1.0\Alnazee-crypter-v1.0.exe'
Global $inputDir = 'C:\Users\Aditya\Desktop\Binaries\'
Global $crypterName


Func runAlnazee1_0Crypter($testInput, $outputDir)
Local $FileList0 = _FileListToArray($testInput, Default, 2, False)
for $i = 1 To $FileList0[0]
	$path1 = $testInput & $FileList0[$i]
	Local $FileList1 = _FileListToArray($path1, Default, 2, False)
	for $j = 1 To $FileList1[0]
		$path2 = $path1 & '\' & $FileList1[$j]
		Local $FileList2 = _FileListToArray($path2, Default, 0, False)
		for $k = 1 To $FileList2[0]
			if $FileList2[$k] == 'binary' Then runAlnazee1_0CrypterBinary($path2 & '\binary', $FileList0[$i] & '_' & $FileList1[$j] & '_binary', $outputDir)
		Next
	Next
Next

EndFunc


Func runAlnazee1_0CrypterBinary($binaryAbsLocation, $binaryRelLocation, $outputDir)
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
Send($binaryAbsLocation)
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
Send($outputDir & $crypterName & '_' & $binaryRelLocation)
MouseClick('primary', 603, 452, 1, 0)

; close
WinWait('Alnazee-crypter-v1.0')
WinActivate('Alnazee-crypter-v1.0')
MouseClick('primary', 238, 133, 1, 0)
WinClose('A L N A Z E E - Crypter - v1.0')
EndFunc