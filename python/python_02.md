# STRINGS & CONSOLE OUTPUT

- Access by Index
```Python
c = "cats"[0]
n = "Ryan"[3]
```

- String methods
```Python
len()
lower()
upper()
str()
```

- String Formatting with %
```Python
name = "Mike"
print "Hello %s" % (name)

day = 6
print "03 - %s - 2019" %  (day)
# 03 - 6 - 2019
print "03 - %02d - 2019" % (day)
# 03 - 06 - 2019
```

- Getting the Current Date and Time
```Python
from datetime import datetime

now = datetime.now()
print(now)

current_year = now.year
current_month = now.month
current_day = now.day

print("%02d/%02d/%04d") % (now.month, now.day, now.year)
print '%02d:%02d:%02d' % (now.hour, now.minute, now.second)

```
