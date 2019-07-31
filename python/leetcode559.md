# 559. Maximum Depth of N-ary Tree
https://leetcode.com/problems/maximum-depth-of-n-ary-tree/

```python
class Solution(object):
    def maxDepth(self, root):
        """
        :type root: Node
        :rtype: int
        """
        if not root:
            return 0

        if not root.children:
            return 1

        return 1 + max([self.maxDepth(node) for node in root.children])
```
- if not 을 if something != None 으로 표현하면 오류가 난다.
