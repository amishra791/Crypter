import os, sys, hashlib

def main(numBytes,crypterFolderDir, outputFileDir):
	
    for crypterName in os.listdir(crypterFolderDir):
        binaryDir = crypterFolderDir + "/" + crypterName
        if os.path.isdir(binaryDir):
            print(binaryDir)
            completeOutputFile = outputFileDir + "/" + crypterName + "_hashes.txt"
            #print(completeOutputFile)
            target = open(completeOutputFile, 'w')
            print("Output file name for crypter "+ crypterName + " is: " + completeOutputFile)
            for file in os.listdir(binaryDir):
                if file.endswith(".exe"):
                    #fileName = '"' + binaryDir + "\\" + file + '"'
                    fileName = binaryDir + "/" + file
                    nBytes = readNBytes(fileName, numBytes)
                    hasher = hashlib.md5()
                    hasher.update(nBytes)
                    #print(nBytes)
                    target.write(file + '\t')
                    hashVal = hasher.hexdigest()
                    #print("HashVal for " + file + ": " + hashVal)
                    target.write(hashVal)
                    target.write("\n")
                else:
                    print(file + " is not an exe file.")
            target.close()
    
def readNBytes(fileName, n):
    try:
        print("Processing: " + fileName)
        file = open(fileName,"rb")
        nBytes = file.read(n)
        #print("Read: " + str(nBytes))
        #print("Closing: " + fileName)
        file.close()
        return nBytes
    except IOError:
        print ("Failed to open file: " + fileName)
        #file.close()
        return
    


total = len(sys.argv)
cmdargs = sys.argv
print(cmdargs)

if len(cmdargs) < 4:
    print("Please provide the following: <number of bytes> <input directory> <output directory>")
else: 
    numBytes = int(cmdargs[1])
    crypterFolderDir = cmdargs[2]
    outputFileDir = cmdargs[3]

    main(numBytes, crypterFolderDir, outputFileDir)




