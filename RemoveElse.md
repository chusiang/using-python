# 少用 else 讓程式邏輯更清楚 #

## Why ##
讓主邏輯簡潔易懂。

## What ##
程式邏輯常出現分支，這時會習慣性地用 if ... elif ... else ... 的寫法。雖然這樣寫起來很直觀，卻不易讀，容易分心在雜亂的分枝裡，而無法專心理解全局。

## How ##
### 使用 Return Guard ###
```
def foo(x):
    if x < 0:
        return False
    ...
    return True
```
### 使用函式和 list comprehension ###
```
abs_numbers = [math.fabs(x) for x in numbers]
```

```
def x_to_y(x):
    if SOME_CONDITION:
        return SOME_VALUE
    ...
    return SOME_VALUE

ys = [x_to_y(x) for x in xs]
```
### 使用 Dictionary ###
```
import operator

def calculation(a, op, b):
    digits = ['zero', 'one', 'two', 'three', 'four',
              'five', 'six', 'seven', 'eight', 'nine']
    s2n = dict(zip(digits, range(10)))
    n2s = dict(zip(range(10), digits))

    op_names = ['add', 'subtract', 'divide', 'multiply']
    op_funcs = [operator.add, operator.sub, operator.div, operator.mul]
    s2op = dict(zip(op_names, op_funcs))

    result = s2op[op](s2n[a], s2n[b])
    return n2s[result]

print calculation('one', 'add', 'two')  # three
```
### 使用多型 ###