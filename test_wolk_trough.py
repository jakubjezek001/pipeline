import os

rootDir1 = "C:\\Users\\jakub.jezek\\.virtualenvs"
rootDir2 = "C:\\Users\\jakub.jezek\\.virtualenv"
for root1, dirs1, files1 in os.walk(rootDir1):
    for relativePath1 in dirs1 :
        print relativePath1
        fullPath1 = os.path.join(root1, relativePath1)
        fullPath2 = fullPath2 = fullPath1.replace(rootDir1, rootDir2)
        print(rootDir1)
        print(fullPath1)
        print(fullPath2)
        os.makedirs(fullPath2)
        print("\n")
