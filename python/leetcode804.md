# 804. Unique Morse Code Words

```python
def uniqueMorseRepresentations(words):
	morse = {"a":".-","b":"-...","c":"-.-.","d":"-..","e":".","f":"..-.","g":"--.","h":"....","i":"..","j":".---","k":"-.-","l":".-..","m":"--","n":"-.","o":"---","p":".--.","q":"--.-","r":".-.","s":"...","t":"-","u":"..-","v":"...-","w":".--","x":"-..-","y":"-.--","z":"--.."}
	letter = ""
	morseRe = []
	unique = 0
	for word in words:
		morseRe02 = []
		for char in word:
			morseRe02.append(morse[char])
		morseRe.append("".join(morseRe02))
	unique = set(morseRe)
	return len(unique)
```
- swift로 풀다가... 극한 타입의 압박으로 인해 python으로 풀었음
- 변수 선언할 때 python은 var 없다!!!
- array 합칠 때 join을 쓸 수 있다.
- array unique 에는 set을 쓰면 간편하다.
