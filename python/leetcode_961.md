# 961. N-Repeated Element in Size 2N Array
https://leetcode.com/problems/n-repeated-element-in-size-2n-array/

```PYTHON
class Solution(object):
    def repeatedNTimes(self, A):
        for a in A:
            for i in range(len(A)-1):
                if A.index(a) != i+1:
                    if a == A[i+1]:
                        return a
```

- 시간복잡도를 좀 낮추기 위해서 코드를 개선해봤다.
```PYTHON
class Solution(object):
    def repeatedNTimes(self, A):
        new_arr = []
        for a in A:
            if a in new_arr:
                return a
            else:
                new_arr.append(a)
```

- set을 활용해서 다시 짜보았다
```PYTHON
class Solution(object):
    def repeatedNTimes(self, A):
        new_arr = set()
        for a in A:
            if a in new_arr:
                return a
            else:
                new_arr.add(a)
```
