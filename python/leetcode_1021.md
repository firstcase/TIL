# 1021. Remove Outermost Parentheses
https://leetcode.com/problems/remove-outermost-parentheses/

```python
class Solution(object):
    def removeOuterParentheses(self, S):
        """
        :type S: str
        :rtype: str
        """
        count = 0
        a = ""
        for char in S :

            if char == '(':
                if count != 0 :
                    a = a + char
                count += 1
            else:
                count -= 1
                if count != 0 :
                    a = a + char
        return a
```
