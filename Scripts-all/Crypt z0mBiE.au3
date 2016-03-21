#RequireAdmin
#include <GuiConstantsEx.au3>
#include <File.au3>
#include <Array.au3>
#include <WinAPIShPath.au3>

Global $crypterDir = 'C:\Users\Aditya\cryptoComputer\data2\Crypters\Good_Crypters\Crypt z0mBiE\z0mBiE TaBuK\z0mBiE TaBuK.exe'
Global $inputDir = 'C:\Users\Aditya\Desktop\Binaries\'
Global $crypterName


Func runCryptZombieCrypter($testInput, $outputDir)
Local $FileList0 = _FileListToArray($testInput, Default, 2, False)
for $i = 1 To $FileList0[0]
	$path1 = $testInput & $FileList0[$i]
	Local $FileList1 = _FileListToArray($path1, Default, 2, False)
	for $j = 1 To $FileList1[0]
		$path2 = $path1 & '\' & $FileList1[$j]
		Local $FileList2 = _FileListToArray($path2, Default, 0, False)
		for $k = 1 To $FileList2[0]
			if $FileList2[$k] == 'binary' Then runCryptZombieCrypterBinary($path2 & '\binary', $FileList0[$i] & '_' & $FileList1[$j] & '_binary', $outputDir)
		Next
	Next
Next

EndFunc


Func runCryptZombieCrypterBinary($binaryAbsLocation, $binaryRelLocation, $outputDir)
; set the coordinates
AutoItSetOption('MouseCoordMode', 0)

Run($crypterDir)

;open stub
MouseClick('primary', 180, 230, 1, 0)

; wait for open dialog and input in file to load and click load
WinWait('Open')
WinActivate('Open')
MouseClick('primary', 337, 418, 1, 0)
Send('{BS 7}')
Send('C:\Users\Aditya\cryptoComputer\data2\Crypters\Good_Crypters\Crypt z0mBiE\z0mBiE TaBuK\Stub.exe')
MouseClick('primary', 598, 447, 1, 0)

;open exe
MouseClick('primary', 469, 228, 1, 0)
; wait for open dialog and input in file to load and click load
WinWait('Open')
WinActivate('Open')
MouseClick('primary', 337, 418, 1, 0)
Send('{BS 7}')
Send($binaryAbsLocation)
MouseClick('primary', 598, 447, 1, 0)

;click crypter
MouseClick('primary', 87, 436, 1, 0)

; save the file
WinWait('Save As')
WinActivate('Save As')
MouseClick('primary', 267, 377, 1, 0)
$crypterName = 'Crypt z0mBiE'
Send($outputDir & $crypterName & '_' & $binaryRelLocation)
MouseClick('primary', 603, 452, 1, 0)

; close
WinWait('z0mBiE TaBuK')
WinActivate('z0mBiE TaBuK')
MouseClick('primary', 124, 135, 1, 0)
MouseClick('primary', 516, 17, 1, 0)
EndFunc