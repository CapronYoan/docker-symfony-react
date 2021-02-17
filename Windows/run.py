import os

with open("run.sh", "r") as r:
    text = r.read()
    list_commands = text.split("\n")
    for element in list_commands:
        os.system(f"cd $APP && {element}")