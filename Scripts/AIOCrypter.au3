#RequireAdmin
#include <GuiConstantsEx.au3>
#include <File.au3>
#include <Array.au3>
#include <WinAPIShPath.au3>
#include-once

Global $crypterDir = 'C:\Users\Aditya\cryptoComputer\data2\Crypters\Good_Crypters\AIO Crypter\AIO Crypter\AIO.exe'
Global $inputDir = 'C:\Users\Aditya\Desktop\Binaries\'
Global $crypterName

Global $testbinInput = 'C:\Users\Aditya\cryptoComputer\data2\Crypters\Benign_Exe\'
Global $testOutput = 'C:\Users\Aditya\Desktop\Output2\'

; runAIOCrypter($testbinInput, $testOutput)

Func runAIOCrypter($testInput, $outputDir)


Local $FileList0 = _FileListToArray($testInput, Default, 2, False)
for $i = 1 To $FileList0[0]
	$path1 = $testInput & $FileList0[$i]
	Local $FileList1 = _FileListToArray($path1, Default, 2, False)
	for $j = 1 To $FileList1[0]
		$path2 = $path1 & '\' & $FileList1[$j]
		Local $FileList2 = _FileListToArray($path2, Default, 0, False)
		for $k = 1 To $FileList2[0]
			if $FileList2[$k] == 'binary' Then runAIOCrypterBinary($path2 & '\binary', $FileList0[$i] & '_' & $FileList1[$j] & '_binary', $outputDir)
		Next
	Next
Next
EndFunc

Func runAIOCrypterBinary($binaryAbsLocation, $binaryRelLocation, $outputDir)
; set the coordinates
AutoItSetOption('MouseCoordMode', 0)

;START

Run($crypterDir)
WinWait('Microsoft .NET Framework')
WinActivate('Microsoft .NET Framework')
MouseClick('primary', 282, 131, 1, 0)

;select crypter option
WinWait('AIO')
WinActivate('AIO')
MouseClick('primary', 138, 38, 1, 0)

;open
WinWait('Crypter')
WinActivate('Crypter')
MouseClick('primary', 258, 41, 1, 0)

; wait for open dialog and input in file to load and click load
WinWait('Open')
WinActivate('Open')
MouseClick('primary', 286, 418, 1, 0)
Send($binaryAbsLocation)
MouseClick('primary', 594, 447, 1, 0)

;save
WinWait('Crypter')
WinActivate('Crypter')
MouseClick('primary', 142, 174, 1, 0)

; save the file
WinWait('Save As')
WinActivate('Save As')
MouseClick('primary', 213, 378, 1, 0)
$crypterName = 'AIO Crypter'
Send($outputDir & $crypterName & '_' & $binaryRelLocation)
MouseClick('primary', 603, 452, 1, 0)

; close app
WinClose('AIO')
WinClose('Crypter')
EndFunc