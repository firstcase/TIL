
def flipAndInvertImage(A):
    finalArray = []
    resultArray = []
    for j in A:
        for i in range(len(j)):
            if j[-i-1] == 1:
                resultArray.append(0)
            else:
                resultArray.append(1)
        finalArray.append(resultArray)
        resultArray = []
    return finalArray

class Pixel:
    isBlack = False
    def invert(self):
        self.isBlack = not self.isBlack

class BlackPixel(Pixel):
    isBlack = True

class WhitePixel(Pixel):
    isBlack = False

class Image:
    pixels = []
    def __init__(self, pixels):
        self.pixels = pixels
    def flip(self):
        finalArray = []
        resultArray = []
        for j in pixels:
            for i in range(len(j)):
                resultArray.append(j[-i-1])
            finalArray.append(resultArray)
        resultArray = []
        pixels = finalArray
    def invert(self):
        finalArray = []
        resultArray = []
        for j in pixels:
            for i in range(len(j)):
                resultArray.append(j[i].invert())
            finalArray.append(resultArray)
        resultArray = []
        pixels = finalArray

img = Image([[BlackPixel(), WhitePixel(), BlackPixel()],
             [BlackPixel(), WhitePixel(), BlackPixel()],
             [WhitePixel(), BlackPixel(), BlackPixel()]])
img.flip()
img.invert()

print(flipAndInvertImage([[1,1,0],[1,0,1],[0,0,0]]))
