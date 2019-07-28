# 590. N-ary Tree Postorder Traversal
https://leetcode.com/problems/n-ary-tree-postorder-traversal/

```python
class Solution(object):
    def postorder(self, root):
        """
        :type root: Node
        :rtype: List[int]
        """
        if root == None :
            return []

        result = []

        if root.children != None :
            for node in root.children:
                result.extend(self.postorder(node))

        return result + [root.val]
```
