from PIL import Image

from multiprocessing import Pool

def load(i):
    print (i,)
    im = Image.open('pillow3.icns')
    im.load()

pool = Pool(4)
pool.map_async(load, range(100))
pool.close()
pool.join()
    

