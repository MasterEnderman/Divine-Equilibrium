list = {
    "cobblestone" : "#707070"
}

for key, value in list.items():
    R = str(round(int(value[1:3], 16)/255,1))
    G = str(round(int(value[3:5], 16)/255,1))
    B = str(round(int(value[5:7], 16)/255,1))
    print('"'+key+'" : ['+R+", "+G+", "+B+"]")

conversion = {
    "cobblestone": [0.4, 0.4, 0.4]
}
