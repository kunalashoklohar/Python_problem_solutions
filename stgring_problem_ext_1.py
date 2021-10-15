"""Problem statement ::
Input string ==>a3b2
Output string ==>aaabb """

char_number= "a10b2"
k = 0
j = 0
print(f"{char_number} -->length{len(char_number)}")
nstring = ''
while(k<len(char_number)):
    print(char_number[k])
    if(char_number[k].isdigit()):
        print("Digit is found--")
        j = k
        while(char_number[j].isdigit()):
            j = j + 1
            if j > (len(char_number)-1):
                break
        print(f"number == {char_number[k:j]}")
        nstring = nstring + char_number[k-1]*int(char_number[k:j])
        k = j
    else:
        k = k+1
print(nstring)        