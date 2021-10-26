list1 = []
def Ascending():
    num = int(input("How many numbers you want to arange in ascending order :\n"))
    for i in range(0, num):
        a = int(input("Enter numbers: "))
        list1.append(a) 
    print(list1)
    list1.sort()
    print(list1)
Ascending()