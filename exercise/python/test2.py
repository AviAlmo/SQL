from tkinter import  *

login_screen = Tk()

def loginPage(): 
    
    login_screen.title("LoginPage")
    login_screen.geometry("300x250")
    Label(login_screen , text="please login details!!").pack()
    Label(login_screen , text="" ).pack()
    username = Label(login_screen ,text="UserName").pack()
    userField = Entry(login_screen , textvariable="userName")
    userField.pack()
    Label(login_screen,text="").pack()
    passwd = Label(login_screen, text="password").pack()
    passField = Entry(login_screen , textvariable="password" , show="*")
    passField.pack()
    Label(login_screen, text="").pack()

    loginButton = Button(login_screen , text="Login" , width= 10 , height=1 , command="validate()" , fg="Red" , bg="Blue")
    loginButton.pack()
    login_screen.mainloop()
    
loginPage()

def validate():
    new_leb = Label(login_screen , text="the user and the password are checked and they are fine !!")
    new_leb.pack()
validate()
