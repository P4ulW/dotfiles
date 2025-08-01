import pyautogui
import os
from PIL import Image, ImageFilter

if __name__ == "__main__":
    img = pyautogui.screenshot()
    img = img.filter(ImageFilter.GaussianBlur(15))
    img.save("/home/paulw/.tmp/lock.png")
    os.popen("i3lock -i /home/paulw/.tmp/lock.png")
