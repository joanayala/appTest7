'''
This script let you apply basic math operations as: 
Add, Mutl, Subs and div.
1. The user must press two numbers
2. The user must press and option from menu
3. The function must apply the operation  
'''
#Libraries############################
import os
#Functions############################
def calc(x, y, z):
    if z == 1 :
        Ans = x + y
    elif z == 2 :
        Ans = x - y
    elif z == 3 :
        Ans = x * y
    else :
        Ans = x / y
    return Ans                

#Main#################################
os.system("clear")
n1 = int(input("First number: "))
n2 = int(input("Second number: "))
print("::: MENU :::")
print("[1]. Add")
print("[2]. Subs")
print("[3]. Mult")
print("[4]. Div")
opt = int(input("Press an option: "))
print("The answer is: ",calc(n1,n2,opt))






