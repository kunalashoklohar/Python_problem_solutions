from math import sqrt
def sqrt_sum():
    a = int(input("Enter the number to find Squair root : \n"))
    num1 =[a]
    sqrt1 = int(sqrt(a))
    if (sqrt1*sqrt1) == a:
        print(f"{a} is a perfect square")
    else:
        print(f"{a} is not a perfect square") 
    print(f"The Squair root of {a} is {sqrt(a)}")
sqrt_sum()