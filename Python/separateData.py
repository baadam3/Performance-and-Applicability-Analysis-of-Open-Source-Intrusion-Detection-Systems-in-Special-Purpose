def GetUsermode():
    file = open("pat/to/raw/log","r")
    dest = open("path/to/separated/log","a")
    i = 0

    for line in file:
        if "Usermode" in line:
            line = line.split(" ")[1]
            dest.write(str(i)+" "+str(line))
            i+=1
            
def GetKernelmode():
    file = open("pat/to/raw/log","r")
    dest = open("path/to/separated/log","a")
    i = 0

    for line in file:
        if "Kernel" in line:
            line = line.split(" ")[2]
            dest.write(str(i)+" "+str(line))
            i+=1

def GetAvgCPU():
    file = open("pat/to/raw/log","r")
    dest = open("path/to/separated/log","a")
    i = 0

    for line in file:
        if "CPU" in line:
            line = line.split(" ")[3]
            line = line.replace("%","")
            dest.write(str(i)+" "+str(line))
            i+=1

def GetMaxMemory():
    file = open("pat/to/raw/log","r")
    dest = open("path/to/separated/log","a")
    i = 0

    for line in file:
        if "Max" in line:
            line = line.split(" ")[2]
            dest.write(str(i)+" "+str(line)+"\n")
            i+=1


def main():
    GetUsermode()
    GetKernelmode()
    GetAvgCPU()
    GetMaxMemory()


if __name__ == "__main__":
    main()
