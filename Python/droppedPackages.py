def GetDroppedSnort():
    file = open("pat/to/raw/log","r")
    dest = open("path/to/separated/log","a")
    i = 0
    for line in file:
        if "dropped" in line:

            
            line = line.split(" ")[-1]
            
            dest.write(str(i)+" "+str(line))
            i+=1

def GetDroppedZeek():
    file = open("pat/to/raw/log","r")
    dest = open("path/to/separated/log","a")
    i = 0
    for line in file:
        if "dropped" in line:
            line = line.split(" ")[10] + '\n'
            dest.write(str(i)+" "+str(line))
            i+=1


def GetDroppedSuricata():
    file = open("pat/to/raw/log","r")
    dest = open("path/to/separated/log","a")
    i = 0
    for line in file:
        if "drop" in line:
            line = line.split(" ")[13] + '\n'
            dest.write(str(i)+" "+str(line))
            i+=1

def main():
    GetDroppedSnort()
    GetDroppedZeek()
    GetDroppedSuricata()

if __name__ == "__main__":
    main()
