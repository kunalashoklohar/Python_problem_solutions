list3 = [2, 13, 12, 13, 4, 5, 45, 46, 47, 45, 46, 2, 12, 34]
def remove_duplicate(list3):         #Removes duplicate elements form list by using list[]
    
    num_1 = []
    for elements in list3:
        if elements not in num_1:
            num_1.append(elements)
    print(num_1)
remove_duplicate(list3)
