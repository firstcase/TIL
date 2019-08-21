# 1160. Find Words That Can Be Formed by Characters

```python
class Solution(object):
    def countCharacters(self, words, chars):
        """
        :type words: List[str]
        :type chars: str
        :rtype: int
        """

        result = 0
        for word in words:
            count = 0
            a = list(chars)
            for char in word:
                if char in a:
                    count = count + 1
                    a.remove(char)
            if count == len(word):
                result = result + len(word)
        return result
```
