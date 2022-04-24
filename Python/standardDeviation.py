# importing the statistics module
from statistics import stdev
 
# importing fractions as parameter values
from fractions import Fraction as fr

def standDev():
    file = open("path/to/log")
    numbs = []
    for line in file:
        line = line.split(" ")[1]
        line = line.split("\n")[0]
        numbs.append(float(line))
   
   
    print(stdev(numbs))

def main():
 standDev()


if __name__ == "__main__":
    main()
