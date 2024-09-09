import tkinter as tk
import os

command = "MANGOHUD_CONFIGFILE=$HOME/.config/MangoHud/MangoHud.conf vblank_mode=0 ENABLE_GAMESCOPE_WSI=1 gamescope --prefer-vk-device 8086:56a5 -force-grab-cursor --mangoapp"

root = tk.Tk()
root.geometry("400x400")
# Define the button functions
def button1_click():
    # Disable the other buttons
    button2.config(state="disabled")
    button3.config(state="disabled")
    button4.config(state="disabled")

def button2_click():
    # Disable the other buttons
    button1.config(state="disabled")
    button3.config(state="disabled")
    button4.config(state="disabled")

def button3_click():
    # Disable the other buttons
    button1.config(state="disabled")
    button2.config(state="disabled")
    button4.config(state="disabled")

def button4_click():
    # Disable the other buttons
    button1.config(state="disabled")
    button2.config(state="disabled")
    button3.config(state="disabled")

# Create the buttons
button1 = tk.Button(root, text="Button 1", command=button1_click)
button2 = tk.Button(root, text="Button 2", command=button2_click)
button3 = tk.Button(root, text="Button 3", command=button3_click)
button4 = tk.Button(root, text="Button 4", command=button4_click)

# Pack the buttons
button1.pack()
button2.pack()
button3.pack()
button4.pack()
root.mainloop()

os.system(command)
