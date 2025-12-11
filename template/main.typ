#import "@local/sjtu-lab-report:0.1.0": *

#let experiment_name = "实验名称"
#let ident_color = "blue"

// Fonts
#let cover_fonts = ("Times New Roman", "KaiTi", "LXGW Bright Code", "Noto Serif SC")
#let article_fonts = ("Times New Roman", "Noto Serif SC")
#let code_fonts = ("Consolas", "Ubuntu Mono", "Menlo", "Courier New", "Noto Sans SC")

#make_cover(
  course_name: "某交大金课",
  course_name_en: "Some random course",
  name: "某某某",
  number: "123456789012",
  major: "某专业",
  tutor: "某老师",
  ident_color: ident_color,
  cover_fonts: cover_fonts
)

#show: general_layout.with(
  ident_color: ident_color, 
  header_logo: true,
  experiment_name: experiment_name,
  article_fonts: article_fonts,
  code_fonts: code_fonts
)

#make_title(name: experiment_name)

= 一级标题
== 二级标题
=== 三级标题
==== 四级标题
===== 五级标题
====== 六级标题

#lorem(110)

```python
print("hello, world")
```

#lorem(50)`hello, world!`

#pagebreak()
