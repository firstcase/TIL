## itertools

- 알고리즘 테스트할 때 알고 있으면 좋은 도구로 보여 정리
- 참고 : https://docs.python.org/2/library/itertools.html

1. compress() : compress('ABCDEF', [1,0,1,0,1,1]) --> A C E F
2. groupby() : key value 기준으로 그룹핑
3. ifilter(), ifilterfalse() : 홀수나 짝수 뽑을 때 쓸 수 있음
4. starmap() : starmap(pow, [(2,5), (3,2), (10,3)]) --> 32 9 1000

5. product()
6. permutations()
7. combinations()
8. combinations_with_replacement()
```Python
product('ABCD', repeat=2)

# AA AB AC AD BA BB BC BD CA CB CC CD DA DB DC DD

permutations('ABCD', 2)

# AB AC AD BA BC BD CA CB CD DA DB DC

combinations('ABCD', 2)

# AB AC AD BC BD CD

combinations_with_replacement('ABCD', 2)

# AA AB AC AD BB BC BD CC CD DD
```
