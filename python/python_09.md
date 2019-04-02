# 9. Exam statistics

## the sum of scores
```python
grades = [100, 100, 90, 40, 80, 100, 85, 70, 90, 65, 90, 85, 50.5]

def grades_sum(scores):
  total = 0
  for score in scores:
    total += score
  return total

print grades_sum(grades)
```
## average
```python
def grades_average(grades_input):
  sum_of_grades = grades_sum(grades_input)
  average = sum_of_grades / float(len(grades_input))
  return average

print grades_average(grades)
```

## The Variance
```Python
def grades_variance(scores):
  average = grades_average(scores)
  variance = 0
  for score in scores:
    variance += (average - score)**2
  variance = variance / len(scores)
  return variance

print grades_variance(grades)
```
