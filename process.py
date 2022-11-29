import os

path = './evalRes_stem/'
document_name = os.listdir(path)
document_stem = {}

for name in document_name:
    if os.path.isfile(path + name):
        with open(path + name, 'r', encoding="utf-8") as f:
            str = f.read()
            document_stem[name] = str

path = './evalRes_noStem/'
document_name = os.listdir(path)
document_noStem = {}

for name in document_name:
    if os.path.isfile(path + name):
        with open(path + name, 'r', encoding="utf-8") as f:
            str = f.read()
            document_noStem[name] = str

# for (index, key) in enumerate(document_stem):
    
