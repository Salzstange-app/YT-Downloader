from pytube import YouTube
import os
import subprocess


while True:
    YT_LINK = input("Gimme ur Youtube link: ")

    path = os.path.abspath('C:\YT-Installer\YT-Vids')

    if os.path.exists(path):
        YouTube(YT_LINK).streams.get_highest_resolution().download(path)
        print("Downloaded")
        subprocess.Popen(r'explorer "C:\YT-Installer\YT-Vids"')
        break
    else:
        print("Der Pfad existiert nicht.")


