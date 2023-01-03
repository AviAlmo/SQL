from re import T
from tkinter import * 

login = Tk()
login.title("employee Login")
login.geometry("300x250")

def emplServices():
    emplServ = Toplevel(login)
    emplServ.title ("employee Services")
    emplServ.geometry("900x900")
    Label(emplServ ,text = "choose the reqiured operation !!").pack()
    Button(emplServ , text="select").pack()
    Button(emplServ , text="update").pack()
    Button(emplServ , text="Insert").pack()
    Button(emplServ , text="delete").pack()

    Button(emplServ, text="close Application")

Label(login , text= "please insert the login details !!").pack()
Label(login  , text="").pack()
Label(login , text="userName" ).pack()
Entry(login , textvariable="Username").pack()
Label(login  , text="").pack()
Label(login , text="password").pack()
Entry(login , textvariable="password" , show="*" ).pack()
Label (login , text="").pack()

Button(login , text="login" , width=10 , height=1 , command=emplServices).pack()

login.mainloop()
from re import T
from tkinter import * 

login = Tk()
login.title("employee Login")
login.geometry("300x250")

def emplServices():
    emplServ = Toplevel(login)
    emplServ.title ("employee Services")
    emplServ.geometry("900x900")
    Label(emplServ ,text = "choose the reqiured operation !!").pack()
    Button(emplServ , text="select").pack()
    Button(emplServ , text="update").pack()
    Button(emplServ , text="Insert").pack()
    Button(emplServ , text="delete").pack()

    Button(emplServ, text="close Application")

Label(login , text= "please insert the login details !!").pack()
Label(login  , text="").pack()
Label(login , text="userName" ).pack()
Entry(login , textvariable="Username").pack()
Label(login  , text="").pack()
Label(login , text="password").pack()
Entry(login , textvariable="password" , show="*" ).pack()
Label (login , text="").pack()

Button(login , text="login" , width=10 , height=1 , command=emplServices).pack()

login.mainloop()
