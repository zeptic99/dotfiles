import tkinter as tk
import os

# command = "MANGOHUD_CONFIGFILE=$HOME/.config/MangoHud/MangoHud.conf vblank_mode=0 ENABLE_GAMESCOPE_WSI=1 gamescope --prefer-vk-device 8086:56a5 -force-grab-cursor --mangoapp"

global command
command = "echo gamescope"

screenRes = ""
gameRes = ""
filter = ""
scaling = ""

root = tk.Tk()
root.geometry("400x400")

# Define the button functions

##############
# Screen res #
##############


def sc_1920():
    global screenRes
    screenRes = " -W 1920 -H 1080"


def sc_1440():
    global screenRes
    screenRes = " -W 1440 -H 1080"


def sc_1080():
    global screenRes
    screenRes = " -W 1080 -H 1080"


def sc_4k():
    global screenRes
    screenRes = " -W 3840 -H 2160"

##############
# APPLIC res #
##############


def ac_1920():
    global gameRes
    gameRes = " -w 1920 -h 1080"


def ac_1440():
    global gameRes
    gameRes = " -w 1440 -h 1080"


def ac_1080():
    global gameRes
    gameRes = " -w 1080 -h 1080"


def ac_4k():
    global gameRes
    gameRes = " -w 3840 -h 2160"

##############
# SCALING    #
##############


def stretch():
    global scaling
    scaling = " -S stretch"


def integer():
    global scaling
    scaling = " -S integer"

##############
# FILTER     #
##############


def fsr():
    global filter
    filter = " -F fsr"


def stg():
    global command
    argument = command + screenRes + gameRes + filter + scaling
    os.system(argument)


# Create the buttons


button1 = tk.Button(root, text="1920", command=sc_1920)
button2 = tk.Button(root, text="1440", command=sc_1440)
button3 = tk.Button(root, text="1080", command=sc_1080)
button4 = tk.Button(root, text="4k", command=sc_4k)

button5 = tk.Button(root, text="Start Gamescope", command=stg)

# Pack the buttons
button1.pack()
button2.pack()
button3.pack()
button4.pack()
button5.pack()

root.mainloop()

