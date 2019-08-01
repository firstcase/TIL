# 872. Leaf-Similar Trees
https://leetcode.com/problems/leaf-similar-trees/

```python
class Solution(object):
    def leafSimilar(self, root1, root2):
        """
        :type root1: TreeNode
        :type root2: TreeNode
        :rtype: bool
        """
        arr1 = []
        arr2 = []

        def makeLeaf1(a):

            if a.left != None:
                makeLeaf1(a.left)

            if a != None:
                if a.left == None and a.right == None:
                    arr1.append(a.val)

            if a.right != None:
                makeLeaf1(a.right)

            return arr1

        def makeLeaf2(b):

            if b.left != None:
                makeLeaf2(b.left)

            if b != None:
                if b.left == None and b.right == None:
                    arr2.append(b.val)

            if b.right != None:
                makeLeaf2(b.right)

            return arr2

        makeLeaf1(root1)
        makeLeaf2(root2)

        return arr1 == arr2
```
