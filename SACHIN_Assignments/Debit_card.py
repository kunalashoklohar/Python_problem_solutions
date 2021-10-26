Cred_card = '1234 5678 9876 5432'
print(f"Your 16 digit Debit card number is : {Cred_card}")
Cred_card[15:]
secure = '**** **** **** ' + Cred_card[15:]
print(f"Your Debir card ending with : {secure} is saved successfully on our database\n" )