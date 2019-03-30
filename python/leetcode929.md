# leetcode929 https://leetcode.com/problems/unique-email-addresses/

```python
def numUniqueEmails(emails):
	thisset = set()
	for email in emails:
		splited = email.split('@')
		editedMail = splited[0].replace(".","")
		plusSplited = editedMail.split("+")
		newMail = plusSplited[0] + "@" + splited[1]    
		thisset.add(newMail)
	return len(thisset)
```

- set을 사용하면 unique한 것만 배열에 추가할 수 있다
- split 함수로 항목을 쪼갤 수 있다.
- replace 함수를 쓰면 항목을 수정할 수 있다.
