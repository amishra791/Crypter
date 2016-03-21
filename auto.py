import os

cryptoBaseDir = "C:\\Users\Aditya\\Desktop\\Crypter\\Scripts\\"
input = "C:\\Users\\Aditya\\cryptoComputer\\data2\\Crypters\\Benign_Exe\\" 
output = "C:\\Users\Aditya\\Desktop\\Output\\"

for file in os.listdir(cryptoBaseDir):
    if file.endswith(".exe"):
        fileName = '"' + cryptoBaseDir + file + '"'
        print(fileName)
        crypto = fileName + " " + input + " " + output
        os.system(crypto) 