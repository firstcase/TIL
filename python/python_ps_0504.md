# 파이썬으로 코딩테스트 문제풀기

무우려 한 시간이나 걸려서 알고리즘 문제를 풀었는데,
사내 내부 테스트용문제라 유출은 안된다고...ㅠㅠ

그래서 오늘 문제풀면서 다시 복습한 내용들을 메모해 봅니다.

- 리스트 인덱스 불러오기
```python
>>> a = ['서울','인천', '대전','제주도']
>>> a.index('인천')
1
>>> a.index('부산')
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
ValueError: '부산' is not in list
```

- 글자를 반복시킬 때 : 곱셈으로 텍스트 반복이 가능하다
```python
print("".join(['a'] * 10))
```
