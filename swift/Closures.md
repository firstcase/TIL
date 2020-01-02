# Closures

- 함수를 파라미터로 받아서 다른 함수를 output으로 반환할 수 있다.
```Swift
func calculator (n1: Int, n2: Int, operation: (Int, Int)-> Int) -> Int {
  return n1 * n2
}

let result = calculator(n1: 2, n2: 3) {$0 * $1}
print(result)  
```

# map
```swift
let array = [6,2,3,9,4,1]

print(array.map{$0 + 1})
```
- map과 closure를 함께 활용하면 array를 쉽게 가공할 수 있다. 
