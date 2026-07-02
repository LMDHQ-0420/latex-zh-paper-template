# latex-zh-paper-template

双栏中文学术论文 LaTeX 模版，风格参考 CCF-A 会议与 IEEE 期刊排版规范。

## 特性

- 双栏 A4 版式，栏间距 5mm
- 中文支持（ctex），正文宋体 10pt，标题黑体
- 英文字体 Times New Roman
- 仅保留页脚页码，无页眉
- BibTeX 参考文献管理（natbib，数字格式，按引用顺序）
- 内置数学定理、算法（algorithm2e）、三线表示例

## 文件结构

```
.
├── main.tex    # 主文档（含模版使用说明）
└── refs.bib    # 参考文献数据库
```

## 编译要求

- XeLaTeX（TeX Live 2022+ 或 MacTeX）
- 系统字体：Times New Roman、Arial、Courier New

## 编译方式

```bash
latexmk -xelatex -bibtex main.tex
```

VS Code + LaTeX Workshop 用户：确保 `/Library/TeX/texbin` 在系统 PATH 中，
然后保存 `main.tex` 即可自动编译。

macOS 可运行以下命令一次性修复：

```bash
echo "/Library/TeX/texbin" | sudo tee /etc/paths.d/tex
```

完全退出 VS Code 后重新打开生效。

## 使用方法

1. 修改 `main.tex` 中的标题、作者、单位信息
2. 将正文各节内容替换为论文内容
3. 在 `refs.bib` 中添加参考文献条目，正文用 `\cite{key}` 引用

## 参考文献格式

默认使用 `unsrtnat`（按引用顺序的数字格式）。
如需作者-年份格式，将 `\bibliographystyle{unsrtnat}` 改为 `\bibliographystyle{plainnat}`，
并移除 `natbib` 的 `numbers` 选项。
