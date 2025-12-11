#let make_cover(
  course_name: str,
  course_name_en: str,
  name: str,
  number: str,
  major: str,
  tutor: str,
  ident_color: str,
  cover_fonts: list
) = {
  page(margin: (top: 2cm, bottom: 2cm, left: 2.5cm, right: 2.5cm), header: none, footer: none)[
    
    #set align(center)
    #set text(font: cover_fonts)
    
    #v(1cm)
    
    #if ident_color == "blue" {
      image("./assets/SJTU_blue.png", width: 8.31cm)
    } else if ident_color == "red" {
      image("./assets/SJTU_red.png", width: 8.31cm)
    }
    
    #v(0.3cm)
    
    #text(size: 14pt, weight: "bold")[SHANGHAI JIAO TONG UNIVERSITY]
    
    #v(0.5cm)
    
    #text(size: 18pt, weight: "bold")[#course_name]
    
    #v(0.2cm)
    
    #text(size: 12pt, weight: "bold")[#upper(course_name_en)]
    
    #v(1cm)
    
    #text(size: 20pt, weight: "bold")[实验报告]
    
    #v(0.3cm)
    
    #text(size: 14pt, weight: "bold")[LAB REPORTS]
    
    #v(1cm)
    
    #if ident_color == "blue" {
      image("./assets/SJTU_logo_blue.png", width: 3.2cm)
    } else if ident_color == "red" {
      image("./assets/SJTU_logo_red.png", width: 3.2cm)
    }
    
    #v(1cm)
    
    #text(size: 14pt)[#datetime.today().display("[year]年[month]月")]
    
    #v(1cm)
    
    #set text(size: 14pt)
    #let info-key(body) = text(body)
    #let info-value(body) = box(
      width: 100%,
      stroke: (bottom: 0.5pt + black),
      outset: (bottom: 0.21em),
    )[#align(center)[#body]]
    
    #grid(
      columns: (auto, 10em),
      row-gutter: 1.2em,
      column-gutter: 0.5em,
      align: (right, left),
      info-key[学生姓名：], info-value[#name],
      info-key[学生学号：], info-value[#number],
      info-key[专#h(2em)业：], info-value[#major],
      info-key[教#h(2em)师：], info-value[#tutor],
    )
  ]
}
