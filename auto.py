import os, sys

total = len(sys.argv)
cmdargs = sys.argv

cryptoBaseDir = cmdargs[1]
input = cmdargs[2]
output = cmdargs[3]

print(cryptoBaseDir)
print(input)
print(output)

#cryptoBaseDir = "C:\Users\Aditya\Desktop\Crypter\Scripts\"
#input_test = "C:\Users\Aditya\cryptoComputer\data2\Crypters\Benign_Exe\"
#input = "C:\Users\Aditya\Desktop\BenignExecutables\"
#output = "C:\Users\Aditya\Desktop\Output\"

#autoit = "C:\\Program Files (x86)\\AutoIt3\\AutoIt3.3xe"

for file in os.listdir(cryptoBaseDir):
    if file.endswith(".exe"):
        fileName = '"' + cryptoBaseDir + file + '"'
        print(fileName)
        crypto = fileName + " " + input + " " + output
        os.system(crypto)