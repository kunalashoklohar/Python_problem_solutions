Inp = []
numb = int(input("How many numbers you need to sort\n"))
for elements in range(0, numb):
    k = input("Enter elements in List : ")
    Inp.append(k)
print(f"List before sorting is : {Inp}")
for i in range(len(Inp)-1):
    if Inp[i] > Inp[i+1]:
        Inp[i], Inp[i+1]=Inp[i+1], Inp[i]
print("List after sorting is : ",(Inp))