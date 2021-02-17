import os

with open("installProject.sh", "r") as r:
    text = r.read()
    list_commands = text.split("\n")
    for index, element in enumerate(list_commands):
        if index == 0:
            os.system(element)
            #print(element)
        else:
            os.system(f"cd $APP && {element}")
            #print(f"cd $APP && {element}")