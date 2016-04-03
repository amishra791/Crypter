#RequireAdmin
#include <GuiConstantsEx.au3>
#include <File.au3>
#include <Array.au3>
#include <WinAPIShPath.au3>


Global $crypterDir = 'C:\Users\Aditya\cryptoComputer\data2\Crypters\Good_Crypters\Alnazee Crypter v2.0\Alnazee Crypter v2.0\Alnazee-crypter-v2.0.exe'
Global $inputDir = 'C:\Users\Aditya\Desktop\Binaries\'
Global $crypterName

Local $aCmdLine = _WinAPI_CommandLineToArgv($CmdLineRaw)
;_ArrayDisplay($aCmdLine)
$testbinInput = $aCmdLine[1]
$testOutput = $aCmdLine[2]
;MsgBox(0, $testOutput, $testbinInput)

runAlnazee2_0Crypter($testbinInput, $testOutput)


Func runAlnazee2_0Crypter($testInput, $outputDir)
Local $FileList0 = _FileListToArray($testInput, Default, 2, False)
for $i = 1 To $FileList0[0]
	$path1 = $testInput & $FileList0[$i]
	Local $FileList1 = _FileListToArray($path1, Default, 2, False)
	for $j = 1 To $FileList1[0]
		$path2 = $path1 & '\' & $FileList1[$j]
		Local $FileList2 = _FileListToArray($path2, Default, 0, False)
		for $k = 1 To $FileList2[0]
			if $FileList2[$k] == 'binary' Then runAlnazee2_0CrypterBinary($path2 & '\binary', $FileList0[$i] & '_' & $FileList1[$j] & '_binary', $outputDir)
		Next
	Next
Next

EndFunc

Func runAlnazee2_0CrypterBinary($binaryAbsLocation, $binaryRelLocation, $outputDir)
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
Send('{BS 9}')
Send($binaryAbsLocation)
MouseClick('primary', 597, 447, 1, 0)


;click crypter
MouseClick('primary', 103, 440, 1, 0)

; save the file
WinWait('Save As')
WinActivate('Save As')
MouseClick('primary', 181, 377, 1, 0)
$crypterName = 'ALNAZEE-Crypter-v2.0'
Send($outputDir & $crypterName & '_' & $binaryRelLocation)
MouseClick('primary', 603, 452, 1, 0)

; close
WinWait('A L n A z E E - C R P T -2-')
WinActivate('A L n A z E E - C R P T -2-')
MouseClick('primary', 129, 137, 1, 0)
Sleep(500)
MouseClick('primary', 520, 16, 1, 0)
EndFunc