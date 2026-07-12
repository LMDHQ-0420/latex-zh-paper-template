# latex-zh-paper-template

双栏中文学术论文 LaTeX 模版，风格参考 CCF-A 会议与 IEEE 期刊排版规范，使用 XeLaTeX 编译。

- 中文支持（ctex），英文字体随平台自动适配
- BibTeX 参考文献管理
- 内置数学、算法、图表示例

## 按系统选择模版文件

### 双栏版

| 文件 | 适用系统 | 中文字体集 | 英文主字体 |
|------|----------|------------|------------|
| `main-mac.tex` | macOS | `fontset=mac` | Times New Roman |
| `main-win.tex` | Windows | `fontset=windows` | Times New Roman |
| `main-linux.tex` | Linux | `fontset=fandol` | TeX Gyre Termes |

### 单栏版

| 文件 | 适用系统 | 中文字体集 | 英文主字体 |
|------|----------|------------|------------|
| `main-mac-single.tex` | macOS | `fontset=mac` | Times New Roman |
| `main-win-single.tex` | Windows | `fontset=windows` | Times New Roman |
| `main-linux-single.tex` | Linux | `fontset=fandol` | TeX Gyre Termes |

单栏版与双栏版的差异：去掉 `twocolumn` 选项，左右页边距从 15mm 调整为 25mm。

## 字体说明

### 中文字体

ctex 宏包通过 `fontset` 参数自动加载对应平台的字体文件，无需手动指定字体路径。

| fontset | 宋体 | 黑体 | 楷体 | 仿宋 |
|---------|------|------|------|------|
| `mac` | STSong（华文宋体） | STHeiti（华文黑体） | STKaiti（华文楷体） | STFangsong（华文仿宋） |
| `windows` | SimSun（中易宋体） | SimHei（中易黑体） | KaiTi（楷体） | FangSong（仿宋） |
| `fandol` | FandolSong | FandolHei | FandolKai | FandolFang |

Fandol 是专为 TeX 设计的开源中文字体集，随 TeX Live 完整版一同发行，Linux 用户无需额外安装。

### 英文字体

macOS / Windows 版直接使用系统自带的微软字体：

- **正文**：Times New Roman（衬线，学术论文标准）
- **无衬线**：Arial（标题、标注备用）
- **等宽**：Courier New（代码）

Linux 版使用 [TeX Gyre](https://www.gust.org.pl/projects/e-foundry/tex-gyre) 系列开源字体，与上述微软字体度量兼容，排版效果接近，同样随 TeX Live 附带：

| TeX Gyre 字体 | 对应微软字体 |
|---------------|-------------|
| TeX Gyre Termes | Times New Roman |
| TeX Gyre Heros | Arial / Helvetica |
| TeX Gyre Cursor | Courier New |

## 编译

双栏版：

```bash
xelatex main-mac.tex    # macOS
xelatex main-win.tex    # Windows
xelatex main-linux.tex  # Linux
```

单栏版：

```bash
xelatex main-mac-single.tex    # macOS
xelatex main-win-single.tex    # Windows
xelatex main-linux-single.tex  # Linux
```

含参考文献的完整编译流程：

```bash
xelatex main-mac.tex
bibtex main-mac
xelatex main-mac.tex
xelatex main-mac.tex
```

或使用 latexmk 自动处理：

```bash
latexmk -xelatex main-mac.tex
```

## 依赖

- TeX Live 2020+ 或 MiKTeX（Windows）
- 宏包：`ctex`, `fontspec`, `geometry`, `amsmath`, `algorithm2e`, `natbib`, `hyperref`, `booktabs`
