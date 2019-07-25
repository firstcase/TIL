# 617. Merge Two Binary Trees
https://leetcode.com/problems/merge-two-binary-trees/

```python
class Solution(object):
    def mergeTrees(self, t1, t2):
        """
        :type t1: TreeNode
        :type t2: TreeNode
        :rtype: TreeNode
        """
        def prin(t1, t2):

            if t1 == None :
                return t2

            if t2 == None :
                return t1

            t1.val += t2.val

            t1.left = prin(t1.left, t2.left)
            t1.right = prin(t1.right, t2.right)

            return t1

        return prin(t1, t2)

## 이 정답은 결국 자바 솔루션보고서 따라서 짰음...ㅠㅠ
## 아래 삽질하다 안된 버전의 코드 올려 놨다... T3이라는 새로운 트리노드를 만들어서 정답 삼으려고 했는데 왜인지 재귀 돈 것보다 더 많은 노드를 생성해 내고 있었다?! 하...

class Solution(object):
    def mergeTrees(self, t1, t2):
        """
        :type t1: TreeNode
        :type t2: TreeNode
        :rtype: TreeNode
        """
        def prin(t1, t2):
            print "-----------"
            print t1
            print t2
            self.t3 = TreeNode(t1.val + t2.val)

            if self.parents != None:
                if self.isLeft == True:
                    self.parents.left = self.t3
                else:
                    self.parents.right = self.t3
            else:
                self.root = self.t3

            self.parents = self.t3


            if t1.left != None or t2.left != None :
                self.isLeft = True
                if t1.left == None:
                    t1.left = TreeNode(0)
                if t2.left == None :
                    t2.left = TreeNode(0)
                prin(t1.left, t2.left)

            if t1.right != None or t2.right != None :
                self.isLeft = False
                if t1.right == None:
                    t1.right = TreeNode(0)
                if t2.right == None :
                    t2.right = TreeNode(0)
                prin(t1.right, t2.right)


        self.root = None
        self.parents = None
        prin(t1, t2)

        return self.root
```
