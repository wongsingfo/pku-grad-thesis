# pku-grad-thesis

北京大学本科生毕业论文 latex 模版，基于 pkuthss 1.9.0 修改。

因为本科生毕业论文格式要求和博士学位论文有所不同，所以该项目主要对格式文件 `pkuthss.cls` 进行了修改和补充，包括：字体字号的设置、页眉的设置等。

## 编译配置

### MacOS

1. 从 http://www.tug.org/mactex/ 下载并安装 MacTeX。
1. 从 https://fontzone.net/ 下载并安装中文字体。所需要的字体文件有：`simsun.ttf`, `simfang.ttf`, `simhei.ttf`, `KaiTi.ttf`
1. 运行 latexmk 进行编译。

如果使用 texstudio 编辑器，可以使用下面的命令进行编译和查看（在选项 Build 页面卡中 Build & View 进行修改）：

```
latexmk -silent -synctex=1 % | txs:///view-pdf
```

