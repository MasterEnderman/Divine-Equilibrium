import os

"""
This Python programm copies the Content of the CHANGELOG.md file into the
corresponding ingame changelog file.
~ written by _MasterEnderman_
"""

with open(os.getcwd()+r"\.minecraft\CHANGELOG.md", "r+") as f:
    changelog = f.read()

with open(os.getcwd()+r"\.minecraft\config\mputils\changelog.txt", "r+") as f:
    f.truncate(0)
    f.write(changelog)
