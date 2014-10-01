from PIL import Image

ar = []
for i in range(100):
    print (i,)
    im = Image.open('pillow3.icns')
    im.load()
    ar.append(im)
    print (' done')
