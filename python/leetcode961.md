# 961. N-Repeated Element in Size 2N Array

```python
class Solution(object):
    def repeatedNTimes(self, A):
        """
        :type A: List[int]
        :rtype: int
        """
        A.sort()
        for i in range(0,len(A)-1):
            if A[i] == A[i+1]:
                return A[i]
```

- 모범답안은 collections.Counter를 사용했다.
```python
class Solution(object):
    def repeatedNTimes(self, A):
        count = collections.Counter(A)
        for k in count:
            if count[k] > 1:
                return k
```
