from tkinter import * 

login_sc = Tk()

def loginPage(): 
    login_sc.title("LoginPage") 
    login_sc.geometry("300x250") 
    lebel(login_sc,text = "please login details!!").pack() 
    lebel(login_sc,text = "").pack() 
    UserName = lebel(login_sc,text = "UserName").pack() 
    UserField1 = Entry(login_sc , textvariable="UserName")
    UserField1.pack() 

    lebel(login_sc,text = "").pack() 
    passwrd = lebel(login_sc,text = "passwrd").pack() 
    passField2 = Entry(login_sc , textvariable="passwrd" ,show= "*") 
    passField2.pack() 
    lebel(login_sc,text = "").pack() 

    loginBu= BOTTOM(login_sc,Text = "login" , width = 10 , height = 1).pack() 
    loginBu.pack()
    login_sc.mainloop()
loginPage() 

