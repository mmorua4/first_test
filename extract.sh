size=[["Extra Large",20], ["Large",15], ["Medium",12],["Small",10]]

topping=[["None",0], ["Mushrooms",4],["Pineapple",3],["Peppers",5],["Pepperoni",3],["Meatball",3]]

crust=[["Regular",0], ["Thin",2], ["Stuffed Cheese",3]]

def display_menu_items(mesg, items):
    print(mesg)
    n=1
    for x in items:
        print (f"{n}) {x[0]} (${x[1]})")
        n=n+1 # can also write as n+=1
    
def validate_menu_response(items, default):
    choice=input("Enter the number corresponding to your choice")
    if choice.isdigit()==False:
        c=default
    else:
        c=int(choice)
        if c<1 or c>len(items):
            c=default
    return c


p=input("Would you like to order a pizza? (Yes/No)")
if p.upper()=="N" or p.upper()=="NO":
    print("Okay. Goodbye")
elif p.upper()=="Y" or p.upper()=="YES":
    print("Great. Please answer the following questions:")
    display_menu_items("What size pizza?",size)
    s=validate_menu_response(size, 2)
    
    display_menu_items("What type of topping?",topping)
    t=validate_menu_response(topping, 1)
    
    display_menu_items("What type of crust?",crust)
    c=validate_menu_response(crust, 1)
    
    bill=size[s-1][1]+topping[t-1][1]+crust[c-1][1]
    print("Your bill =",bill)
    
    
    
    
    
    
    