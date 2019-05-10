# 771. Jewels and Stones
https://leetcode.com/problems/jewels-and-stones/

```PYTHON
class Solution(object):
    def numJewelsInStones(self, J, S):
        result = 0
        for char in J:
            for stone in S:
                if char == stone:
                    result += 1
        return result
```
