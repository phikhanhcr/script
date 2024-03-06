import sys
import platform
import pylottie
import os


# list all file in folder
inFiles = []
outFiles = []
count = 0
for root, dirs, files in os.walk("data"):
    for file in files:
        if file.endswith(".json"):
            count = count + 1
            inFiles.append(os.path.join(root, file))
            outFiles.append(os.path.join("result", file.replace(".json", ".webp")))



pylottie.convertMultLottie2Webp(inFiles, outFiles, count)
