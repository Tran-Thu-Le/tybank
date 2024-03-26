#import "../tybank.typ": variation_table, data
#import "@preview/cetz:0.2.2": canvas, plot



// the variable will contain all the following questions
// please do not delete it
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

#let stem = [#Ptts của đường thẳng $Delta: x+y-1=0$ có phương trình:

#let row0 = "x  -oo ...  -1 ... 2   ...  +oo"
#let row1 = "y' ... -    0  +   |   -    ..."
#let row2 = "y  +oo down 2  up  +oo down -oo"
#variation_table(row0, row1, row2)

]

#let choice0 = [$display(cases(x= t, y= 1-t))$]
#let choice1 = [$display(cases(x= 2t, y= 1-t))$]
#let choice2 = [$display(cases(x= t, y= 1+t))$]
#let choice3 = [$display(cases(x= 2t, y= 1+t))$]
#let choices =(choice0, choice1, choice2, choice3)

#let result = 0

#let solution = [Ta có xét điểm $M_0(0, 1)$ thuộc $Delta$. Vì $Delta$ có vector pháp tuyến $vector(n)=(1,1)$, suy ra vector chỉ phương $vector(u)=(1, -1)$. Từ đó áp dụng công thức #ptts.]

#let tags = (type: "mcq", class: 10,  difficulty: 1, topic: "duongthang")

#let aquestion = (
  "stem": stem,
  "choices": choices,
  "result": result,
  "solution": solution,
  "tags": tags
)

#questions.push(aquestion)

