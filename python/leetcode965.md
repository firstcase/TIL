# 965. Univalued Binary Tree
https://leetcode.com/problems/univalued-binary-tree/

```python
class Solution(object):
    def isUnivalTree(self, root):
        """
        :type root: TreeNode
        :rtype: bool
        """

        result = []
        value = True

        def makearr(root):
            if root != None:
                makearr(root.left)
                result.append(root.val)
                makearr(root.right)
            return result

        makearr(root)

        for x in result:
            if x == result[0]:
                value = True
            else:
                return False


        return value
```
- 정답을 보니 set을 써서 좀 더 간단하게 짤 수 있어서 수정해 보았다.

```python
result = []

def makearr(root):
    if root != None:
        makearr(root.left)
        result.append(root.val)
        makearr(root.right)
    return result

makearr(root)


return len(set(result)) == 1
```
