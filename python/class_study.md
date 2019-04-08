# 어제의 문제를 다시 풀어보자

이미지 좌우반전 & 명암 반전 기능을 클래스를 사용해서 다시 만들어 보았다.
- 클래스 내 함수는 인자로 self를 받아야 한다
- 상속을 받을 경우 부모 클래스의 메서드를 사용할 수 있게 된다
- 상속은 클래스의 인자로 부모클래스 이름을 써주면 됨
- MVC모델에서 model에 해당하는 구조라고 생각하면 됨(true/false를 숫자로 바꾸는 코드는 컨트롤러에 해당함)

```python
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
```
