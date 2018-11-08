# swift로 hashids 만들기

업무에 필요해서 hashids 만드는 코드를 학습해 보았다.
```swift
var hashids = Hashids(salt:"this is my salt");
var hash = hashids.encode(1, 2, 3); // hash:"laHquq"
var values = hashids.decode(hash!); // values:[1,2,3]
```

hashids.encode의 세 번째 인자를 for문을 사용해서 숫자를 바꿔주면
원하는 양의 hashids를 얻을 수 있을 것으로 보인다.
실습은 다음 이 시간에...
