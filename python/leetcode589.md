# 589. N-ary Tree Preorder Traversal
https://leetcode.com/problems/n-ary-tree-preorder-traversal/

```python
class Solution(object):
    def preorder(self, root):
        """
        :type root: Node
        :rtype: List[int]
        """
        if root == None :
            return []

        result = []

        if root.children != None :
            for node in root.children:
                result.extend(self.preorder(node))

        return [root.val] + result
```

- append 와 extend의 차이
```python
x = [1, 2, 3]
x.append([4, 5])
print (x)
# [1, 2, 3, [4, 5]]

x = [1, 2, 3]
x.extend([4, 5])
print (x)
# [1, 2, 3, 4, 5]
```
