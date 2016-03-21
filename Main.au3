
#include <GuiConstantsEx.au3>
#include <File.au3>
#include <Array.au3>
#include <WinAPIShPath.au3>

Local $aCmdLine = _WinAPI_CommandLineToArgv($CmdLineRaw)
;_ArrayDisplay($aCmdLine)
$testbinInput = $aCmdLine[1]
$testOutput = $aCmdLine[2]
;ConsoleWrite($testbinInput & $testOutput & @CRLF)
;Global $binInput = "C:\Users\Aditya\cryptoComputer\data2\Crypters\Benign_Exe\"
;Global $output = "C:\Users\Aditya\Desktop\Output2\"


#include <File.au3>

;MsgBox(0, "Start", @ScriptDir)

ConsoleWrite(@ScriptDir & @CRLF)
$Path = "C:\Users\Aditya\Desktop\Crypter\Scripts\"   ;  @ScriptDir & 'Scripts\'
$files = _FileListToArray($Path, "*.au3")

Local $params[3] ; Make room for three elements
 ;Assign some data
 $params[0] =2
 $params[1] = $testbinInput
 $params[2] = $testOutput

;MsgBox(0, "ScriptFullPath", @ScriptFullPath)

For $i = 1 To $files[0]
	;ConsoleWrite(@ScriptFullPath & '/AutoIt3ExecuteScript "' & $Path & $files[$i] & '.au3"' & $binInput & ' ' & $output & @CRLF)
	Local $foo = $Path & $files[$i] & ' ' & $testbinInput & ' ' & $testOutput
	ConsoleWrite($foo & @CRLF)

	MsgBox(0, "File Name", $foo)
	;$params[1] = $foo
    RunWait(@AutoItExe & '/AutoIt3ExecuteScript "' & ' ' & $foo)

	;ShellExecute($foo, $testbinInput & ' ' & $testOutput) ; $params) ; $binInput & ' ' & $output)
Next

MsgBox(0, "Program", "Ended")

