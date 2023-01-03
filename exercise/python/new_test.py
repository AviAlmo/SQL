from tkinter import * 

emp =Tk()
emp.title("employyees details") 
emp.geometry("800x600") 

Label(emp, text ="Please insert request details!!").pack()
Label(emp, text ="").pack() 


#INSERT =Label(emp, text="insert").grid(row=4 ,column=0) 
#update = Label(emp, text="update").grid(row=4 ,column=2) 
INSERT =Label(emp, text="insert").pack()
update = Label(emp, text="update").pack()

emp.mainloop()