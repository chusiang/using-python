## 使用 Eclipse + PyDev ##

[Eclipse](http://eclipse.org/) 是一個很多人使用的整合式開發環境，除了可以開發 Java 專案之外，也可以搭配許多插件開發各種語言的專案，當然也可以透過 [PyDev](http://pydev.sf.net/) 這個套件來開發 Python 專案。

以下透過幾個簡單的步聚示範如何使用 Eclipse + PyDev 來開發 Python 專案：

### 安裝 Eclipse 及 PyDev ###

  * 由於 Eclipse 是使用 Java 所寫成的軟體，所以你的系統一定要安裝 Java 執行環境，可以到 [Java 的官方網站](http://java.sun.com) 下載 JDK 安裝即可。（Linux 或 Mac 請參考各自系統 Java 的安裝方式）

  * 到 [Eclipse 的下載頁](http://eclipse.org/downloads/) 下載 Classical 的 Eclipse 即可。

  * 打開 Eclipse，在功能表中的 _Help_ 選擇 _Install New Software..._ 然後 **Name** 填 `PyDev` 而 **Location** 填 `http://pydev.sourceforge.net/updates`:
> ![http://lh6.ggpht.com/_hNy_9UI1_R8/Sp02YY1nf6I/AAAAAAAAC14/czxVa9u9_8E/s400/Add%20PyDev%20Site.png](http://lh6.ggpht.com/_hNy_9UI1_R8/Sp02YY1nf6I/AAAAAAAAC14/czxVa9u9_8E/s400/Add%20PyDev%20Site.png)

  * 勾選 **PyDev** 然後按下 **Next按鈕** 完成安裝，並且重新啟動 Eclipse。

### 設定 Eclipse 及 PyDev 的環境 ###

  * 在選單中選 _Preferences..._ 進入設定畫面。（注意：Mac 版的選項位置與其它系統不同）

  * 打開左側選單列的 **PyDev** 部份，設定 _`Interpreter - Python`_，按下右側的 **New** 新增 Python 直譯器的位置：
> ![http://lh3.ggpht.com/_hNy_9UI1_R8/Sp04uVS0uqI/AAAAAAAAC2M/ZpqZOdaS_Xs/s400/Setting%20Python%20interpreter.png](http://lh3.ggpht.com/_hNy_9UI1_R8/Sp04uVS0uqI/AAAAAAAAC2M/ZpqZOdaS_Xs/s400/Setting%20Python%20interpreter.png)

> 然後輸入 Python 直譯器的路徑：

> ![http://lh5.ggpht.com/_hNy_9UI1_R8/Sp05dst5ZsI/AAAAAAAAC2Q/UvebgFfpdAg/s400/set%20interpreter%20location.png](http://lh5.ggpht.com/_hNy_9UI1_R8/Sp05dst5ZsI/AAAAAAAAC2Q/UvebgFfpdAg/s400/set%20interpreter%20location.png)

  * 另外再設定一下產生專案的一些基本設定，比方說將專案中的文字檔預設使用 UTF-8 文字編碼，以及使用 Unix 換行字元，這些就到 _General_ 下的 _Workspace_ 來設定：
> ![http://lh3.ggpht.com/_hNy_9UI1_R8/Sp065uCrJ2I/AAAAAAAAC2U/UtGXhMZ5Evc/s400/setting%20workspace.png](http://lh3.ggpht.com/_hNy_9UI1_R8/Sp065uCrJ2I/AAAAAAAAC2U/UtGXhMZ5Evc/s400/setting%20workspace.png)

  * 而 Python 的程式碼對於縮排是很嚴格的（後面的章節會提到），為了避免發生不一致（有時用 tab 而有時用空白字元縮排）的問題，也可以設定 tab 鍵展開成空白，這是到  _General_ 下的 _Editors_ > _Text Editors_ 來作設定，將 **Insert spaces for tabs** 的選項勾選起來：
> ![http://lh6.ggpht.com/_hNy_9UI1_R8/Sp08IhK-5eI/AAAAAAAAC2g/K-HbmkaIXEg/s400/expand%20tab.png](http://lh6.ggpht.com/_hNy_9UI1_R8/Sp08IhK-5eI/AAAAAAAAC2g/K-HbmkaIXEg/s400/expand%20tab.png)


### 建立 Python 專案 ###

一切準備就緒之後，就可以直接建立 _PyDev project_ 來開發 Python 專案了。