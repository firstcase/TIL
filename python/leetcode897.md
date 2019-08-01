# 897. Increasing Order Search Tree
https://leetcode.com/problems/increasing-order-search-tree/

```python
class Solution(object):
    def increasingBST(self, root):
        """
        :type root: TreeNode
        :rtype: TreeNode
        """
        self.result = None
        self.preNode = None


        def makearr(a):
            if a.left != None :
                makearr(a.left)

            b = TreeNode(a.val)

            if self.preNode != None :
                print self.preNode.val
                print a.val
                self.preNode.right = b
            else:
                self.result = b

            self.preNode = b

            if a.right != None :
                makearr(a.right)

        makearr(root)

        return self.result
```

Runtime: 108 ms, faster than 5.24% of Python online submissions for Increasing Order Search Tree.
Memory Usage: 12 MB, less than 14.81% of Python online submissions for Increasing Order Search Tree.

- 매우 비효율적인 코드임에 틀림없으나, 일단 풀었으니 넘어가본다;
