# pku-grad-thesis

北京大学本科生毕业论文 latex 模版，基于 pkuthss 1.9.0 修改。

因为本科生毕业论文格式要求和博士学位论文有所不同，所以该项目主要对格式文件 `pkuthss.cls` 进行了修改和补充，包括：字体字号的设置、页眉的设置、文献的排序、导师评阅表的添加等。

## 编译配置

1. 从 https://fontzone.net/ 下载并安装中文字体。所需要的字体文件有：`simsun.ttf`, `simfang.ttf` (搜关键词 fangsong), `simhei.ttf`, `KaiTi.ttf`。字体安装完成后可能要重启一下系统。
1. 安装 Latex
  - MacOS: 从 http://www.tug.org/mactex/ 下载并安装 MacTeX。
  - Windows: 从 https://www.tug.org/texlive/ 下载并安装 Texlive-full.

## 编译命令

在终端下，输入命令：

```shell
# 切换工作目录
cd pku-grad-thesis
# 编译
latexmk
```

清理编译产生的中间文件：

```
latexmk -c
```

## IDE 配置

### Visual Studio Code

1. 安装插件 LaTeX Workshop
2. 在左侧的插件页面中，选择 Build LaTeX project 中的 Recipe: latexmk (latexmkrc)

### TeXstudio

1. 将选项的 Build 页面卡中 Build & View 的一项修改为：

```
latexmk -silent -synctex=1 % | txs:///view-pdf
```

2. 选择编译并查看
