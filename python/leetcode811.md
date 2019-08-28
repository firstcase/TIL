# 811. Subdomain Visit Count
https://leetcode.com/problems/subdomain-visit-count/

```python
class Solution(object):
    def subdomainVisits(self, cpdomains):
        """
        :type cpdomains: List[str]
        :rtype: List[str]
        """
        # ans = collections.Counter()
        ans = {}
        for domain in cpdomains:
            count, domain = domain.split()
            count = int(count)
            frags = domain.split('.')
            for i in xrange(len(frags)):
                k = ".".join(frags[i:])
                if k in ans:
                    ans[k] += count
                else:
                    ans[k] = count

        return ["{} {}".format(ct, dom) for dom, ct in ans.items()]
```
- 정답은 collections.Counter를 사용했지만, 이걸 사용하지 않은 다른 버전으로도 풀어보았다.
