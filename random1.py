#Developer: Joan C. Ayala
#Random1 exercise
import os
from random import randint, uniform, random

#This function generates integer numbers
def Z():
    AnsZ = randint(0,100)
    return AnsZ
#This function generates float numbers
def R():
    AnsR = uniform(0,100)
    return AnsR

#Main
os.system("clear")
print("The integer random number is: ", Z())
r = R()
print("The float random number is: ", r)