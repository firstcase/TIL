# 대문자를 소문자로 바꾸는 함수 만들기

```python
def to_lower_case(word):
	result = []
	for i in word:
		if ord(i) < 97:
			result.append(chr(ord(i) + 32))
		else:
			result.append(i)
	return "".join(result)



print(to_lower_case("LOVELY"))
```
# string to ascii  
print(ord("A"))
print(ord("B"))
print(ord("a"))
print(ord("b"))

# ascii to string
print(chr(97))
print(chr(98))
print(chr(65))
print(chr(66))

# join string
t = "".join(['h', 'e', 'l', 'l', 'o'])
print(t)

# string length
print(len("abc"))

# get string by index
a = "abc"[2]
print(a)
