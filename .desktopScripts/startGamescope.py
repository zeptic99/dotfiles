import tkinter as tk
import os

# command = "MANGOHUD_CONFIGFILE=$HOME/.config/MangoHud/MangoHud.conf vblank_mode=0 ENABLE_GAMESCOPE_WSI=1 gamescope --prefer-vk-device 8086:56a5 -force-grab-cursor --mangoapp"

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


def noBloodyFsr():
    global filter
    filter = ""


def stg():
    global command
    argument = command + screenRes + gameRes + filter + scaling
    os.system(argument)


# Create the buttons
scf = tk.Frame(root)
screen_res_label = tk.Label(root, text="Screen RES")

acf = tk.Frame(root)
application_res_label = tk.Label(root, text="Application RES")

scalef = tk.Frame(root)
scale_label = tk.Label(root, text="Scaling")

filterf = tk.Frame(root)
filter_label = tk.Label(root, text="Filter / Upscaling")

sc1 = tk.Button(scf, text="1920", command=sc_1920)
sc2 = tk.Button(scf, text="1440", command=sc_1440)
sc3 = tk.Button(scf, text="1080", command=sc_1080)
sc4 = tk.Button(scf, text="4k", command=sc_4k)

ac1 = tk.Button(root, text="1920", command=ac_1920)
ac2 = tk.Button(root, text="1440", command=ac_1440)
ac3 = tk.Button(root, text="1080", command=ac_1080)
ac4 = tk.Button(root, text="4k", command=ac_4k)

stretchb = tk.Button(root, text="Stretch", command=stretch)
intb = tk.Button(root, text="Integer", command=integer)

fsrb = tk.Button(root, text="FSR", command=fsr)
nfsrb = tk.Button(root, text="No FSR", command=noBloodyFsr)

stgb = tk.Button(root, text="Start Gamescope", command=stg)

# Pack the buttons
sc1.pack(side=tk.LEFT)
sc2.pack(side=tk.LEFT)
sc3.pack(side=tk.LEFT)
sc4.pack(side=tk.LEFT)

# Pack the label and the frame
screen_res_label.pack()  # Packs the label above the buttons
scf.pack()  # Packs the frame below the label

ac1.pack(side=tk.LEFT)
ac2.pack(side=tk.LEFT)
ac3.pack(side=tk.LEFT)
ac4.pack(side=tk.LEFT)

stgb.pack(side=tk.LEFT, anchor=tk.S)

root.mainloop()
