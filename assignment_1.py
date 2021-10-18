#probelm 1
# Write a program doing follwing things:
# User should input his/her name
# a msg should get printed on the console "Welcome kunal.

# Solution
quarters = []
for year in range(2019,now.year +1):
#     print(year)
    if(year == now.year):
        print("Watch it",year)
        for q in range(1,math.ceil(now.month/3) +1):
            
            quarters.append(f"Q{q} {year}")
    else:    
        for q in range(1,5):
            print(f"Q{q} {year}")
            quarters.append(f"Q{q} {year}")
print(quarters)  
