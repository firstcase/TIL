700. Search in a Binary Search Tree
https://leetcode.com/problems/search-in-a-binary-search-tree/
```python
class Solution(object):
    def searchBST(self, root, val):
        """
        :type root: TreeNode
        :type val: int
        :rtype: TreeNode
        """
        def findval(root):
            if root != None:
                if root.val < val:
                    return findval(root.right)

                elif root.val == val:
                    return root

                elif root.val > val:
                    return findval(root.left)  

        return findval(root)
```
