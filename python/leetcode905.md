# 905. Sort Array By Parity
https://leetcode.com/problems/sort-array-by-parity/

```python
def sortArrayByParity(A):
  evenArray = []
  oddArray = []
  for i in A:
    if i % 2 == 0:
      evenArray.append(i)
    else:
      oddArray.append(i)
  return evenArray + oddArray

print(sortArrayByParity([3,1,2,4]))
```
