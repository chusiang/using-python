## 什麼是 Dictionary? ##

什麼是 Dictionary 呢？想了解 Dictionary 之前，可以先想像你現在手上有一本電子英英字典，當你輸入英文單字的時候，就可以查得到它的唯一翻譯。也就是說，你所關心的 **英文單字** 與 **翻譯** 之間有著 **一對一** 的關係。你輸入的英文單字，就叫做 Key ；而得到的翻譯，就叫做 Value 。一個 Dictionary 是一群 Key : Value 配對的集合。

## 建立一個 Dictionary 物件 ##

建立一個 Dictionary 物件其實很簡單，讓我們先看個例子：
```
d = {'python': 'Large constricting snakes.', 'ruby': 'A precious stone that is a red corundum.'}
```
當 Python 直譯器執行這段程式後，Dictionary 物件就生成了。`'python'` 這個字串，在上例中即扮演 Key 的角色，而 `'Large constricting snakes.'` 這個字串，則扮演 Value 的角色。而 Key : Value 之間以冒號 : 間隔之，如果有好幾對 Key : Value，則以逗號 `,` 間隔之。

當我們使用 `[]` 這個運算子的時候，我們就可以拿到它的 Value 了
```
print d['python']
```

則會印出
```
Large constricting snakes.
```

## 取得 Dictionary 物件中 Key 的個數 ##
有的時候會想要知道 Dictionary 物件中，到底有幾對 Key, Value ，就如同取得字串的長度般，只要使用 `len(d)` 即可得到之。
```
print len(d)
```
則會印出
```
2
```

## 新增或修改一筆資料 ##

假設我們有新的單字出現了，想要新增到剛才的 Dictionary 物件中，該如何做呢？
同樣地，也是使用 `[]` 這個運算子，這次還要配合上 `=` 這個運算子。
```
d['game'] = 'Activity engaged in for diversion or amusement.'
print d
```
則會印出
```
{'python': 'Large constricting snakes.', 'game': 'Activity engaged in for diver
ion or amusement.', 'ruby': 'A precious stone that is a red corundum.'}
```
我們可以發現， `d` 這個物件中的確新增了一筆資料。

又假設我們想要修改某個單字的翻譯，也是用樣使用 `[]` 這個運算子並要配合上 `=` 這個運算子：
```
d['python'] = 'A very powerful scripting language.'
print d
```
則會印出
```
{'python': 'A very powerful scripting language.', 'game': 'Activity engaged in for diver
ion or amusement.', 'ruby': 'A precious stone that is a red corundum.'}
```
我們可以發現， 原來的 `python` 這個單字所對應到的翻譯已經被改變了。

## 刪除一筆資料 ##

假設我們現在要移除一個單字及其翻譯，我們可以利用 `del` 來達成這個目的。
```
del d['game']
print d
```
則會印出
```
{'python': 'A very powerful scripting language.', 'ruby': 'A precious stone that is a red corundum.'}
```
如此一來，`'game'` 這筆資料就被你刪除了。




---


## 試試看 ##
  1. 假使你輸入 `print d['never_seen']` 其中， `'never_seen'` 並不在 Dictionary 之中，會發生什麼事呢？
  1. 試輸入
```
print 'python' in d
print 'never_seen' in d
```
> 並觀察他們的不同之處。


---


## 下一步... ##

我們已經學會如何使用 Dictionary 來建立物件之間的一對一關係了，下一節將介紹如何使用 `if` 來做有條件地執行某些程式。