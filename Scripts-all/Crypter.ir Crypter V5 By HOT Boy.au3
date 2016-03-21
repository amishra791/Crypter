#RequireAdmin
#include <GuiConstantsEx.au3>
#include <File.au3>
#include <Array.au3>
#include <WinAPIShPath.au3>

Global $crypterDir = 'C:\Users\Aditya\cryptoComputer\data2\Crypters\Good_Crypters\Crypter.ir Crypter V5 By HOT Boy\Crypter.ir Crypter V5\Client.exe'
Global $inputDir = 'C:\Users\Aditya\Desktop\Binaries\'
Global $crypterName
Global $binaryName



Func runCrypterV5HotBoy($testInput, $outputDir)
Local $FileList0 = _FileListToArray($testInput, Default, 2, False)
for $i = 1 To $FileList0[0]
	$path1 = $testInput & $FileList0[$i]
	Local $FileList1 = _FileListToArray($path1, Default, 2, False)
	for $j = 1 To $FileList1[0]
		$path2 = $path1 & '\' & $FileList1[$j]
		Local $FileList2 = _FileListToArray($path2, Default, 0, False)
		for $k = 1 To $FileList2[0]
			if $FileList2[$k] == 'binary' Then runCrypterV5HotBoyBinary($path2 & '\binary', $FileList0[$i] & '_' & $FileList1[$j] & '_binary', $outputDir)
		Next
	Next
Next


EndFunc

Func runCrypterV5HotBoyBinary($binaryAbsLocation, $binaryRelLocation, $outputDir)

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
Send($binaryAbsLocation)
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
Send($outputDir & $crypterName & '_' & $binaryRelLocation)
MouseClick('primary', 603, 452, 1, 0)

; close
WinClose('Done')
WinClose('Crypter.ir Crypter V5 By HOT Boy')
EndFunc