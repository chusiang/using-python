## 為什麼要裝直譯器? ##

使用 Python 程式語言所寫出的程式碼，不需要透過編譯器（compiler）將它編譯成可執行檔案，僅需要 Python 直譯器（interpreter）就可以執行。好處是程式碼修改後，執行時立即改變。

## 下載 Python 直譯器 ##

直接連結到[Python 官方下載頁](http://www.python.org/download/)就可以找到各種版本的 Python 直譯器。本文件目前會以 Python 2.5 版本為主，建議下載 Python 2.5.4 的版本來學習使用。

### 在 Windows 下安裝 ###

  * 首先，在 Python 官方下載頁選擇 2.5.4 的版本:
> ![http://lh3.ggpht.com/_hNy_9UI1_R8/SpeJdiFNqMI/AAAAAAAAC1I/0uUTjRSSHfI/s400/2_13.png](http://lh3.ggpht.com/_hNy_9UI1_R8/SpeJdiFNqMI/AAAAAAAAC1I/0uUTjRSSHfI/s400/2_13.png)

> 並且下載適合的安裝檔案（`*`.msi）

> ![http://lh6.ggpht.com/_hNy_9UI1_R8/SpeKVN8mAhI/AAAAAAAAC1Q/GlHsA3nQeCk/s400/2-14.png](http://lh6.ggpht.com/_hNy_9UI1_R8/SpeKVN8mAhI/AAAAAAAAC1Q/GlHsA3nQeCk/s400/2-14.png)

  * 執行安裝程式，按照指示安裝在合適的路徑：
> ![http://lh5.ggpht.com/_hNy_9UI1_R8/SpeKVZ8cFvI/AAAAAAAAC1U/VeZ1CPi8W2Y/s400/2-15.png](http://lh5.ggpht.com/_hNy_9UI1_R8/SpeKVZ8cFvI/AAAAAAAAC1U/VeZ1CPi8W2Y/s400/2-15.png)

### 在 Linux 下安裝 ###

現在大部份的 Linux 系統在標準安裝後，預設都會安裝 Python 的直譯器，你可以先在命令列中輸入 `python` 看看會不會出現類似像這樣的交談式介面：
```
Python 2.6.2 (release26-maint, Apr 19 2009, 01:58:18) 
[GCC 4.3.3] on linux2
Type "help", "copyright", "credits" or "license" for more information.
>>>
```
如果有出現類的畫面就表示系統已經安裝了 Python 直譯器，若是沒有出現，則可以選擇下列幾種安裝方式：

#### 使用套件系統安裝 ####

如果使用的是 Debian/Ubuntu Linux，則可以使用：
> | `sudo apt-get install python` |
|:------------------------------|
來進行安裝。

若是 Gentoo Linux，則使用：
> | `sudo emerge python` |
|:---------------------|

而 Fedora Linux 則是使用：
> | `sudo yum install python2.5` |
|:-----------------------------|
來安裝。

#### 從 Python 原始碼安裝 ####

  * 從[Python官方下載頁](http://www.python.org/downloads/)下載原始碼（如：python-2.5.4.tgz 或 python-2.5.4.tar.bz2）

  * 解壓縮後，在 Python 原始碼的目錄中執行：
> | `$ ./configure --prefix=/usr/local` |
|:------------------------------------|
> 便會開始設定建置 Python 的一些選項，其中 `prefix` 為安裝的位置。

  * 若是沒有錯誤，則可以利用下列指令完成安裝：
> | `$ sudo make install` |
|:----------------------|

  * 試試看是否能執行 `/usr/local/bin/python`

### 在 Mac OSX 下安裝 ###