roll_num = range(1, 11)
students = ['SACHIN', 'RAHUL', 'MANISH', 'BHAKTI', 'DIPTI', 'SAMPADA', 'SUJATA', 'MANASVI', 'SIDDJARTH', 'SANDHYA', 'POONAM']
address = ['Roha - Raigad', 'Dombivali - Thane', 'Chinchavad - Pune', 'Mumbai - Mumbai Subarban', 'Pali - Sudhagad', 'Rahatad - Tala', 'Dombivali - Thane', 'Chinchavad - Pune', 'Mumbai - Mumbai Subarban', 'Tokarde - Tala']
for roll, stud, add in zip(roll_num, students, address):
    print(f"Roll Number is : {roll}\n Name of Student is : {stud}\n Address is : {add}")