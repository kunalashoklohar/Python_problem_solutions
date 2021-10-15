a = "a Global"

def sample(a):
    a = 'a local'
    print(a)
    global b
    b = b + " mm"
    print(b)

b = "b Global"

sample('arg')