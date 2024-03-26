#import "../tybank.typ": variation_table, data
#import "@preview/cetz:0.2.2": canvas, plot


// ----------------------------------------
//      Container of questions
// ----------------------------------------
// please do not delete the following `questions` variable
#let questions = ()



// ----------------------------------------
//      Macros
// ----------------------------------------
#let dxdydz = $d x d y d z$
#let dxdy = $d x d y$
#let dx = $d x$
#let dy = $d y$

#let vara = 3
// #let vara = 5
// #let vara = 7
// #let vara = 9
#let pttq = [phương trình tổng quát]
#let Pttq = [Phương trình tổng quát]
#let ptts = [phương trình tham số]
#let Ptts = [Phương trình tham số]
#let vector(x)=$arrow(#x)$
#let square(x) = calc.pow(x, 2)

// --------------------------
//    Cau 1 
// --------------------------

#let stem = [
  Cho hình chữ nhật $A B C D$ có $A B = 4$, $A D=6$. Độ dài của vector $vector(u) = vector(A B) + vector(A C)$ bằng bao nhiêu?
]

#let result = 111

#let solution = [Todo]

#let tags = (type: "saq", class: 10,  difficulty: 1, topic: "vector")

#let aquestion = (
  stem: stem,
  result: result,
  solution: solution,
  tags: tags
)

#questions.push(aquestion)

