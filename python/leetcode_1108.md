# 1108. Defanging an IP Address

```python
class Solution(object):
    def defangIPaddr(self, address):
        """
        :type address: str
        :rtype: str
        """
        result = address.replace(".", "[.]")
        return result
```
