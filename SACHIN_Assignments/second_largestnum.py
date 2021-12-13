maxnum = [12,13,11,14,19,156,159]
for j in range(0, len(maxnum)-1):
    for i in range(0, len(maxnum)-1):
        if maxnum[i] > maxnum [i+1]:
            maxnum[i], maxnum[i+1] = maxnum[i+1], maxnum[i]
print(f"List to find the second largest number is : {maxnum}")
print(f"Second largest number in the list is : {maxnum[-2]}")