# PYTHON LISTS AND DICTIONARIES

```python
letters = ['a', 'b', 'c']
letters.append('d')
print len(letters)
print letters


letters = ['a', 'b', 'c', 'd', 'e']
slice = letters[1:3]
print slice
print letters
```
index로 넘버를 지정해서 값을 꺼낼 때 앞 숫자는 포함이지만 뒷 숫자는 불포함으로 [1:3]을 부르면 index 1번과 2번 값만 꺼내지고 3번은 포함되지 않는다.


- 딕셔너리
```python
backpack = ['xylophone', 'dagger', 'tent', 'bread loaf']
backpack.remove('dagger')

inventory = {
  'gold' : 500,
  'pouch' : ['flint', 'twine', 'gemstone'], # Assigned a new list to 'pouch' key
  'backpack' : ['xylophone','dagger', 'bedroll','bread loaf']
}

# Adding a key 'burlap bag' and assigning a list to it
inventory['burlap bag'] = ['apple', 'small ruby', 'three-toed sloth']

# Sorting the list found under the key 'pouch'
inventory['pouch'].sort()

# Your code here
inventory['pocket'] = ['seashell', 'strange berry', 'lint']

inventory['backpack'].sort()
inventory['backpack'].remove('dagger')
inventory['gold'] = inventory['gold'] + 50
```
