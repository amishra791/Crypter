#RequireAdmin
#include <GuiConstantsEx.au3>
#include <File.au3>
#include <Array.au3>
#include <WinAPIShPath.au3>

Global $crypterBase = $aCmdLine[1]
Global $crypterDir = $crypterBase & '2012 Crypter.exe'
Global $crypterName
Local $aCmdLine = _WinAPI_CommandLineToArgv($CmdLineRaw)
;_ArrayDisplay($aCmdLine)
$testbinInput = $aCmdLine[2]
$testOutput = $aCmdLine[3]

Func run2012Crypter($testInput, $outputDir)

Local $FileList0 = _FileListToArray($testInput, Default, 2, False)
for $i = 1 To $FileList0[0]
	$path1 = $testInput & $FileList0[$i]
	Local $FileList1 = _FileListToArray($path1, Default, 2, False)
	for $j = 1 To $FileList1[0]
		$path2 = $path1 & '\' & $FileList1[$j]
		Local $FileList2 = _FileListToArray($path2, Default, 0, False)
		for $k = 1 To $FileList2[0]
			if $FileList2[$k] == 'binary' Then run2012CrypterBinary($path2 & '\binary', $FileList0[$i] & '_' & $FileList1[$j] & '_binary', $outputDir)
		Next
	Next
Next
EndFunc

Func run2012CrypterBinary($binaryAbsLocation, $binaryRelLocation, $outputDir)
; set the coordinates
AutoItSetOption('MouseCoordMode', 0)
Run($crypterDir)
WinWait('Microsoft .NET Framework')
WinActivate('Microsoft .NET Framework')
MouseClick('primary', 282, 131, 1, 0)

; click on Crypt option
MouseClick('primary', 432, 209, 1, 0)
; click open
MouseClick('primary', 462, 178, 1, 0)

; wait for open dialog and input in file to load and click load
WinWait('Open')
WinActivate('Open')
MouseClick('primary', 352, 421, 1, 0)
Send($binaryAbsLocation)
MouseClick('primary', 574, 450, 1, 0)
MouseClick('primary', 190, 466, 1, 0)
MouseClick('primary', 398, 464, 1, 0)

; save the file
WinWait('Save As')
WinActivate('Save As')
MouseClick('primary', 560, 379, 1, 0)
$crypterName = '2012 Crypter'
Send($outputDir & $crypterName & '_' & $binaryRelLocation)
MouseClick('primary', 592, 448, 1, 0)

; click on the 'ok' button
WinWait('2012 Crypter Private')
WinActivate('2012 Crypter Private')
MouseClick('primary', 126, 134, 1, 0)
;close the program
MouseClick('primary', 507, 11, 1, 0)
EndFunc
