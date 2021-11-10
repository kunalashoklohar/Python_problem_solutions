x1 = int(input("Enter the First number in range\n"))
x2 = int(input("Enter the Last number in range\n"))
for elements in list(range(x1, (x2)+1)):
    list1 = []
    list2 = []
    if elements % 2 == 0:
        list1.append(elements)
        print(f"Even numbers from the range given is : {list1} \n")
    else:
        if elements %2 != 0:
            list2.append(elements)
            print(f"Odd numbers from the range given is : {list2} \n")
            