participants = ['SACHIN', 'RAHUL','MANISH', 'ARMAN','YOGITA','SANKET','ROBIN','DAYANAND','DILIP']
print(participants)
n = input("Please enter the name of participnt which you want to remove\n")
if n in participants:
    participants.remove(n)
    print(participants)
else:
    print("You have entered wrong name")