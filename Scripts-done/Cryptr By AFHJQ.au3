#RequireAdmin
#include <GuiConstantsEx.au3>
#include <File.au3>
#include <Array.au3>
#include <WinAPIShPath.au3>

Global $crypterDir = 'C:\Users\Aditya\cryptoComputer\data2\Crypters\Good_Crypters\Cryptr\Cryptr\Cryptr.exe'
Global $inputDir = 'C:\Users\Aditya\Desktop\Binaries\'
Global $crypterName

;Global $testbinInput = 'C:\Users\Aditya\cryptoComputer\data2\Crypters\Benign_Exe\'
;Global $testOutput = 'C:\Users\Aditya\Desktop\Output2\'

;MsgBox(0, "$CmdLineRaw", $CmdLineRaw)

Local $aCmdLine = _WinAPI_CommandLineToArgv($CmdLineRaw)
;_ArrayDisplay($aCmdLine)
$testbinInput = $aCmdLine[1]
$testOutput = $aCmdLine[2]
;MsgBox(0, $testOutput, $testbinInput)

runCrypterAFHJQ($testbinInput, $testOutput)

Func runCrypterAFHJQ($testInput, $outputDir)
Local $FileList0 = _FileListToArray($testInput, Default, 2, False)
for $i = 1 To $FileList0[0]
	$path1 = $testInput & $FileList0[$i]
	Local $FileList1 = _FileListToArray($path1, Default, 2, False)
	for $j = 1 To $FileList1[0]
		$path2 = $path1 & '\' & $FileList1[$j]
		Local $FileList2 = _FileListToArray($path2, Default, 0, False)
		for $k = 1 To $FileList2[0]
			if $FileList2[$k] == 'binary' Then runCrypterBinary($path2 & '\binary', $FileList0[$i] & '_' & $FileList1[$j] & '_binary', $outputDir)
		Next
	Next
Next


EndFunc

Func runCrypterBinary($binaryAbsLocation, $binaryRelLocation, $outputDir)
; set the coordinates
AutoItSetOption('MouseCoordMode', 0)

Run($crypterDir)

;open
WinWait('Cryptr By AFHJQ')
WinActivate('Cryptr By AFHJQ')
MouseClick('primary', 395, 91, 1, 0)

; wait for open dialog and input in file to load and click load
WinWait('Open')
WinActivate('Open')
MouseClick('primary', 254, 420, 1, 0)
Send('{BS 12}')
Send($binaryAbsLocation)
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
Send($outputDir & $crypterName & '_' & $binaryRelLocation)
MouseClick('primary', 596, 445, 1, 0)

; close
WinClose('Done')
WinClose('Cryptr By AFHJQ')
EndFunc