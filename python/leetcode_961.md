# 961. N-Repeated Element in Size 2N Array

```PYTHON
class Solution(object):
    def repeatedNTimes(self, A):
        for a in A:
            for i in range(len(A)-1):
                if A.index(a) != i+1:
                    if a == A[i+1]:
                        return a
```
- 코드가 매우 누덕누덕한데 N을 사용해서 다시 풀어볼 예정!
