from PIL import Image

for i in range(1):
    im = Image.open('pillow3.icns')
    im.load()
    print '.'
