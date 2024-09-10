import tkinter as tk
import os

command = (
    "MANGOHUD_CONFIGFILE=$HOME/.config/MangoHud/MangoHud.conf "
    "vblank_mode=0 gamescope -force-grab-cursor --mangoapp -f"
)

screenRes = ""
gameRes = ""
filter = ""
scaling = ""
refresh = ""
gpu = " --prefer-vk-device 8086:56a5"

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


def r_60():
    global refresh
    refresh = " -r 60"


def r_240():
    global refresh
    refresh = " -r 240"


def nvidia():
    global gpu
    gpu = " -prefer-vk-device 10de:2206"


def intel():
    global gpu
    gpu = " -prefer-vk-device 8086:56a5"

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
    argument = command + gpu + screenRes + gameRes + filter + scaling + refresh
    print(argument)


def pgs():
    global command
    argument = command + gpu + screenRes + gameRes + filter + scaling + refresh
    file_path = os.path.expandvars(
        "$HOME/zeptittyconf/.dotfiles/.desktopScripts/startGamescope.sh")
    with open(file_path, 'w') as file:
        file.write(argument)


# Create the frames
scf = tk.Frame(root)
screen_res_label = tk.Label(root, text="Screen RES")

acf = tk.Frame(root)
application_res_label = tk.Label(root, text="Application RES")

scalef = tk.Frame(root)
scale_label = tk.Label(root, text="Scaling")

filterf = tk.Frame(root)
filter_label = tk.Label(root, text="Filter / Upscaling")

refreshf = tk.Frame(root)
refresh_label = tk.Label(root, text="Refresh Rate")

gpuf = tk.Frame(root)
gpu_label = tk.Label(root, text="GPU")

# Create the buttons
sc1 = tk.Button(scf, text="1920", command=sc_1920)
sc2 = tk.Button(scf, text="1440", command=sc_1440)
sc3 = tk.Button(scf, text="1080", command=sc_1080)
sc4 = tk.Button(scf, text="4k", command=sc_4k)

ac1 = tk.Button(acf, text="1920", command=ac_1920)
ac2 = tk.Button(acf, text="1440", command=ac_1440)
ac3 = tk.Button(acf, text="1080", command=ac_1080)
ac4 = tk.Button(acf, text="4k", command=ac_4k)

stretchb = tk.Button(scalef, text="Stretch", command=stretch)
intb = tk.Button(scalef, text="Integer", command=integer)

fsrb = tk.Button(filterf, text="FSR", command=fsr)
nfsrb = tk.Button(filterf, text="No FSR", command=noBloodyFsr)

highrb = tk.Button(refreshf, text="240Hz", command=r_240)
lowrb = tk.Button(refreshf, text="60Hz", command=r_60)

gpub = tk.Button(gpuf, text="Use NVIDIA", command=nvidia)
gpuib = tk.Button(gpuf, text="Use Intel", command=intel)

stgb = tk.Button(root, text="Print Argument", command=stg)
pgsb = tk.Button(root, text="Save startGamescope.sh", command=pgs)

# Pack the buttons
sc1.pack(side=tk.LEFT)
sc2.pack(side=tk.LEFT)
sc3.pack(side=tk.LEFT)
sc4.pack(side=tk.LEFT)

ac1.pack(side=tk.LEFT)
ac2.pack(side=tk.LEFT)
ac3.pack(side=tk.LEFT)
ac4.pack(side=tk.LEFT)

stretchb.pack(side=tk.LEFT)
intb.pack(side=tk.LEFT)
fsrb.pack(side=tk.LEFT)
nfsrb.pack(side=tk.LEFT)

highrb.pack(side=tk.LEFT)
lowrb.pack(side=tk.LEFT)

gpub.pack(side=tk.LEFT)
gpuib.pack(side=tk.LEFT)

# Pack the label and the frame
screen_res_label.pack()  # Packs the label above the buttons

scf.pack()  # Packs the frame below the label
application_res_label.pack()
acf.pack()

scale_label.pack()
scalef.pack()

filter_label.pack()
filterf.pack()

refresh_label.pack()
refreshf.pack()

gpu_label.pack()
gpuf.pack()

stgb.pack(side=tk.LEFT, anchor=tk.S)
pgsb.pack(side=tk.LEFT, anchor=tk.S)

root.mainloop()
