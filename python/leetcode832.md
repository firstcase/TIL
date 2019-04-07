# 832. Flipping an Image
https://leetcode.com/problems/flipping-an-image/

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

print(flipAndInvertImage([[1,1,0],[1,0,1],[0,0,0]]))
```
