from tkinter import * 

#create the root of the document of the widght 

root = Tk()

#create new label widget 

mylebel = Label(root, text="hello qiryat ono !!")
mylebel2 = Label(root, text="hello qiryat ggt !!")



#show the lebel on the screen 

#mylebel.pack()
#mylebel2.pack()

mylebel.grid(row = 0 , column=0 ) 
mylebel2.grid(row = 2 , column=2 ) 

#mybutton 

mybutton= Button(root, text= "click on me")
mybutton2= Button(root, text= "click on me22")
mybutton3= Menubutton(root, text= "Welcome")


mybutton.grid(row=5 ,column=5)
mybutton2.grid(row=6 ,column=6)
mybutton3.grid(row=12,column=1)


#use the looping mechnisim 
root.mainloop() 

