# 938. Range Sum of BST
https://leetcode.com/problems/range-sum-of-bst/

```python
class Solution(object):
    def rangeSumBST(self, root, L, R):
        """
        :type root: TreeNode
        :type L: int
        :type R: int
        :rtype: int
        """
        self.result = 0
        def prin(root):
            if root.left != None :
                prin(root.left)
            if root.val >= L and root.val <= R:
                self.result = self.result + root.val
            if root.right != None :
                prin(root.right)

        prin(root)

        return self.result
```
