#RequireAdmin
#include <GuiConstantsEx.au3>
#include <File.au3>
#include <Array.au3>
#include <WinAPIShPath.au3>

Global $crypterDir = 'C:\Users\Aditya\cryptoComputer\data2\Crypters\Good_Crypters\Crypt By TeaM EjraM\Crypt By TeaM EjraM\Crypt By TeaM EjraM.exe'
Global $inputDir = 'C:\Users\Aditya\Desktop\Binaries\'
Global $crypterName



Func runTeamEjramCrypter($testInput, $outputDir)
Local $FileList0 = _FileListToArray($testInput, Default, 2, False)
for $i = 1 To $FileList0[0]
	$path1 = $testInput & $FileList0[$i]
	Local $FileList1 = _FileListToArray($path1, Default, 2, False)
	for $j = 1 To $FileList1[0]
		$path2 = $path1 & '\' & $FileList1[$j]
		Local $FileList2 = _FileListToArray($path2, Default, 0, False)
		for $k = 1 To $FileList2[0]
			if $FileList2[$k] == 'binary' Then runTeamEjramCrypterBinary($path2 & '\binary', $FileList0[$i] & '_' & $FileList1[$j] & '_binary', $outputDir)
		Next
	Next
Next

EndFunc

Func runTeamEjramCrypterBinary($binaryAbsLocation, $binaryRelLocation, $outputDir)
; set the coordinates
AutoItSetOption('MouseCoordMode', 0)

Run($crypterDir)

; wait for main screen and click 'open'
$crypterName = 'Crypt By TeaM EjraM'
WinWait($crypterName)
WinActivate($crypterName)
MouseClick('primary', 276, 202, 1, 0)

; wait for open dialog and input in file to load and click load
WinWait('Open')
WinActivate('Open')
MouseClick('primary', 353, 372, 1, 0)
Send($binaryAbsLocation)
MouseClick('primary', 550, 372, 1, 0)

; click on 'save'
WinWait($crypterName)
WinActivate($crypterName)
MouseClick('primary', 41, 232, 1, 0)

; save the file
WinWait('Save As')
WinActivate('Save As')
MouseClick('primary', 402, 372, 1, 0)
Send($outputDir & $crypterName & '_' & $binaryRelLocation)
MouseClick('primary', 550, 372, 1, 0)

; click on the 'ok' button
WinWait('Crypt by team ejram')
WinActivate('Crypt by team ejram')
MouseClick('primary', 50, 90, 1, 0)

; close the program
WinWait($crypterName)
WinActivate($crypterName)
MouseClick('primary', 282, 382, 1, 0)
EndFunc