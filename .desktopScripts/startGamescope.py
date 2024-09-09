import tkinter as tk
import os

command = "MANGOHUD_CONFIGFILE=$HOME/.config/MangoHud/MangoHud.conf vblank_mode=0 ENABLE_GAMESCOPE_WSI=1 gamescope --prefer-vk-device 8086:56a5 -force-grab-cursor --mangoapp"

root = tk.Tk()
root.geometry("400x400")

# Define the button functions

##############
# Screen res #
##############


def sc_1920():
    global screenRes
    screenRes = " -w 1920 -h 1080"


def sc_1440():
    global screenRes
    screenRes = " -w 1920 -h 1080"


def sc_1080():
    global screenRes
    screenRes = " -w 1920 -h 1080"


def sc_4k():
    global screenRes
    screenRes = " -w 1920 -h 1080"

# Create the buttons


button1 = tk.Button(root, text="1920", command=sc_1920)
button2 = tk.Button(root, text="1440", command=sc_1440)
button3 = tk.Button(root, text="1080", command=sc_1080)
button4 = tk.Button(root, text="4k", command=sc_4k)

# Pack the buttons
button1.pack()
button2.pack()
button3.pack()
button4.pack()

command += screenRes
command += gameRes
command += scaling
command += monitor


root.mainloop()

os.system(command)
