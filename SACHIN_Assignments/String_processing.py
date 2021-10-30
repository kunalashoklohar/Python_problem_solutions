ip_str = "chapter string"
ip_str.split()
stringcap = ip_str.split()
capitalise = []
for ss in stringcap:
    print(f"Content of ss is : {ss} and id of ss is : {id(ss)}")
    capitalise.append(ss.capitalize())
print(capitalise)
print("".join(capitalise))