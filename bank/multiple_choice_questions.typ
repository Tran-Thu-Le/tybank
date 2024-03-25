// #import "macros.typ": *
#import "../utils.typ": variation_table
#import "@preview/cetz:0.2.2": canvas, plot


//the variable will contain all the following questions
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
// #let choice0 = [#lorem(5)]
#let choice1 = [$display(cases(x= 2t, y= 1-t))$]
#let choice2 = [$display(cases(x= t, y= 1+t))$]
#let choice3 = [$display(cases(x= 2t, y= 1+t))$]

#let correct_choice = 0

#let solution = [Ta có xét điểm $M_0(0, 1)$ thuộc $Delta$. Vì $Delta$ có vector pháp tuyến $vector(n)=(1,1)$, suy ra vector chỉ phương $vector(u)=(1, -1)$. Từ đó áp dụng công thức #ptts.]

#let tags = ("chapter": 1, "difficulty": 1, "topic": "giới hạn")

// template
#let aquestion = (
  "stem": stem,
  "choice0": choice0,
  "choice1": choice1,
  "choice2": choice2,
  "choice3": choice3,
  "correct_choice": correct_choice,
  "solution": solution,
  "tags": tags
)

#questions.push(aquestion)


// --------------------------
//    Cau 2
// --------------------------
#let stem = [#Pttq của đường thẳng $Delta: display(cases(x=1+2t, y=1-3t))$ là:

#align(center,
canvas(length: 1cm, {
  plot.plot(size: (7, 4),
  // align: center,
    x-tick-step: none,
    x-ticks: ((-calc.pi, $-pi$), (0, $0$), (1, $x$), (calc.pi, $pi$)),
    y-tick-step: 0.5,
      {
      plot.add-fill-between(domain: (-calc.pi, calc.pi),
        calc.sin, // First function/data
        calc.cos,
        label: "diff"
        )
      }
    )
  }
)
)

]

#let choice0 = [$3x+2y-5=0$]
#let choice1 = [$-3x+2y +1=0$]
#let choice2 = [$3x-2y-1=0$]
#let choice3 = [$2x+3y-5=0$]

#let correct_choice = 0

#let solution = [Rút $t$ ta được $display(t = (x-1)/2=(y-1)/(-3))$. Nên #pttq là: $-3(x-1) = 2(y-1) <=>  3x+2y -5=0$]

#let tags = ("chapter": 1, "difficulty": 1, "topic": "giới hạn")

// template
#let aquestion = (
  "stem": stem,
  "choice0": choice0,
  "choice1": choice1,
  "choice2": choice2,
  "choice3": choice3,
  "correct_choice": correct_choice,
  "solution": solution,
  "tags": tags
)
#questions.push(aquestion) 

// --------------------------
//    Cau 3
// --------------------------
#let stem = [#Pttq đi qua hai điểm $A(0, 1)$ và $B(2, 2)$ là:]

#let choice0 = [$x-2y+2=0$  ]
#let choice1 = [$2x+y-6=0$]
#let choice2 = [$-2x-y +6=0$ ]
#let choice3 = [$2x+y-1=0$]

#let correct_choice = 0

#let solution = [Chọn $vector(u)= vector(A B) = (2, 1)$, suy ra $vector(n) = (-1, 2)$. Ta chọn điểm $A(0, 1)$ thuộc đường thẳng (ta cũng có thể chọn $B$). #Pttq có dạng $-(x-0)+2(y-1)=0 <=> -x+2y -2=0$.]

#let tags = ("chapter": 1, "difficulty": 1, "topic": "liên tục")

// template
#let aquestion = (
  "stem": stem,
  "choice0": choice0,
  "choice1": choice1,
  "choice2": choice2,
  "choice3": choice3,
  "correct_choice": correct_choice,
  "solution": solution,
  "tags": tags
)

#questions.push(aquestion) 

// --------------------------
//    Cau 4
// --------------------------

#let stem = [#Pttq của đường thẳng $Delta'$ đi qua $A(0, 1)$ vuông góc  với đường thẳng $Delta: 2x+y-1=0$ là:]

#let choice0 = [$x-2y+2=0$]
#let choice1 = [$x-2y+1=0$]
#let choice2 = [$2x-y +1=0$]
#let choice3 = [$2x-y-1=0$]

#let correct_choice = 0

#let solution = [Vì vector pháp tuyến của $Delta$, đặt là $vector(n)=(2, 1)$, là chỉ phương của $Delta'$ (hãy vẽ hình để kiểm tra). Nên vector pháp tuyến của $Delta'$ là $vector(n')=(-1, 2)$. Vậy #pttq của $Delta'$ là $-(x-0)+2(y-1) <=> -x+2y-2=0$.]

#let tags = ("chapter": 1, "difficulty": 1, "topic": "đạo hàm cấp 1")

// template
#let aquestion = (
  "stem": stem,
  "choice0": choice0,
  "choice1": choice1,
  "choice2": choice2,
  "choice3": choice3,
  "correct_choice": correct_choice,
  "solution": solution,
  "tags": tags
)

#questions.push(aquestion) 

// --------------------------
//    Cau 5
// --------------------------
#let stem = [Khoảng cách giữa hai đường thẳng song song $Delta_1: y=2x+1$ và $Delta_2: y=2x+6$ là:]

#let choice0 = [$sqrt(2)$]
#let choice1 = [$sqrt(3)$]
#let choice2 = [$sqrt(5)$]
#let choice3 = [$sqrt(7)$]

#let correct_choice = 2

#let solution = [
  - _Cách 1._ Áp dụng công thức khoảng cách giữa hai đường thẳng song song được $ d(Delta_1, Delta_2)= (|6-1|)/sqrt(1+(-2)^2)=sqrt(5) $.
  - _Cách 2._ Lấy một điểm thuộc đường này tính khoảng cách đến đường kia.]

#let tags = ("chapter": 1, "difficulty": 1, "topic": "giới hạn")

// template
#let aquestion = (
  "stem": stem,
  "choice0": choice0,
  "choice1": choice1,
  "choice2": choice2,
  "choice3": choice3,
  "correct_choice": correct_choice,
  "solution": solution,
  "tags": tags
)

#questions.push(aquestion) 

// --------------------------
//    Cau 6
// --------------------------
#let stem = [Góc giữa hai đường thẳng $Delta_1: y=-0.5x +1$ và $Delta_2: y=2x+1$ bằng:]

#let choice0 = [$0^o$]
#let choice1 = [$30^o$]
#let choice2 = [$90^o$]
#let choice3 = [$120^o$]

#let correct_choice = 2

#let solution = [
  - _Cách 1._ Tích hai hệ số góc bằng $-1$ nên hai đường thẳng vuông góc với nhau.
  - _Cách 2._ Tính góc giữa hai đường thẳng theo công thức. Ta có $vector(n_1) = (0.5, 1)$ và $vector(n_2) = (-2, 1)$, nên (chú ý cẩn thận quên dấu trị tuyệt đối)
  $ cos(Delta_1, Delta_2) = |cos(vector(n_1), vector(n_2))| =(|0.5 times (-2) + 1 times 1|)/(sqrt(0.5^2+1^2) dot sqrt((-2)^2+1)) =0. $
  Bấm máy $cos^(-1)(0)=90^o $.  
]

#let tags = ("chapter": 1, "difficulty": 1, "topic": "giới hạn")

// template
#let aquestion = (
  "stem": stem,
  "choice0": choice0,
  "choice1": choice1,
  "choice2": choice2,
  "choice3": choice3,
  "correct_choice": correct_choice,
  "solution": solution,
  "tags": tags
)
#questions.push(aquestion) 

// --------------------------
//    Cau 7
// --------------------------
#let stem = [Vị trí tương đối của hai đường thẳng $Delta_1: y=2x+1$ và $Delta_2: 3x+y-7=0$ là:]

#let choice0 =  [song song]
#let choice1 =  [cắt nhau]
#let choice2 =  [trùng nhau]
#let choice3 = [không xác định]

#let correct_choice = 1

#let solution = [Đưa hai đường thẳng đã cho về #pttq 
$  Delta_1: y=2x-y+1=0 quad quad Delta_2: 3x+y-7=0 $
- _Cách 1._ Chú ý $vector(n_1)=(2,-1)$ và $vector(n_2)=(3, 1)$ khác tỷ lệ, nên hai đường đã cho cắt nhau.
- _Cách 2._ Bấm máy hệ phương trình, ta thấy có nghiệm, nên hai đường đã cho cắt nhau.
]

#let tags = ("chapter": 1, "difficulty": 1, "topic": "giới hạn")

// template
#let aquestion = (
  "stem": stem,
  "choice0": choice0,
  "choice1": choice1,
  "choice2": choice2,
  "choice3": choice3,
  "correct_choice": correct_choice,
  "solution": solution,
  "tags": tags
)
#questions.push(aquestion) 

// --------------------------
//    Cau 8
// --------------------------
#let stem = [Viết #pttq của đường trung trực của cạnh $B C$ trong tam giác $Delta A B C$ với $A(0, 0), B(1, 2), C(3, 0)$.]

#let choice0 = [$y=x+1$]
#let choice1 = [$y=x-1$]
#let choice2 = [$x+y=1$]
#let choice3 = [$x+y=-1$]

#let correct_choice = 1

#let solution = [Gọi $Delta$ là đường trung trực của $B C$. Ta có $Delta$ đi qua trung điểm $M$ của $B C$ và nhận $vector(B C)$ làm vector pháp tuyến. Ta tính được $M(2, 1)$ (trung bình tọa độ của $B$ và $C$) và $vector(n)= vector(B C)=(2, -2)$ (tọa độ $C$ trừ tọa độ $B$). #Pttq $Delta: 2(x-2)-2(y-1)=0 <=> 2x-2y-2=0$. Ta có thể viết lại $Delta: y=x-1$.]

#let tags = ("chapter": 1, "difficulty": 1, "topic": "giới hạn")

// template
#let aquestion = (
  "stem": stem,
  "choice0": choice0,
  "choice1": choice1,
  "choice2": choice2,
  "choice3": choice3,
  "correct_choice": correct_choice,
  "solution": solution,
  "tags": tags
)
#questions.push(aquestion) 

// --------------------------
//    Cau 9
// --------------------------
#let stem = [Cho tam giác $Delta A B C$ với $A(0, 0), B(1, 2), C(3, 0)$. Viết #pttq của đường thẳng đi qua $B$ và song song với cạnh $A C$.]

#let choice0 = [$x=-1$]
#let choice1 = [$x=1$]
#let choice2 = [$y=0$]
#let choice3 = [$y=2$]

#let correct_choice = 3

#let solution = [Ta có $B(1, 2)$ và $vector(u)=vector(A C)=(3, 0)$, suy ra $vector(n)=(0, 3)$. Nên có $0(x-1)+3(y-2)=0 <=> y=2$.]

#let tags = ("chapter": 1, "difficulty": 1, "topic": "giới hạn")

// template
#let aquestion = (
  "stem": stem,
  "choice0": choice0,
  "choice1": choice1,
  "choice2": choice2,
  "choice3": choice3,
  "correct_choice": correct_choice,
  "solution": solution,
  "tags": tags
)

#questions.push(aquestion) 

// --------------------------
//    Cau 10
// --------------------------

#let stem = [Trong tam giác $Delta A B C$, biết //$A(1, 3), B(0, 0)$,
$C(4,0)$. Biết phương trình đường cao $A H: y=x$ và đường cao $B K: x=1$. Tìm #pttq đường cao $C P$.]

#let choice0 = [#Pttq $C P: x+3y-8=0$]
#let choice1 = [#Pttq $C P: x+3y-4=0$]
#let choice2 = [#Pttq $C P: x+2y-4=0$]
#let choice3 = [#Pttq $C P: x+2y-8=0$]

#let correct_choice = 1

#let solution = [Gọi $X$ là trực tâm là giao của $A H$ và $B K$. ta có $X=(1,1)$. Đường cao $C P$ cũng chính là $C X$. Ta có điểm $C(4, 0)$ và $vector(u)= vector(C X)=(-3, 1)$ hay $vector(n)=(1,3)$. Nên $1(x-4)+3(y-0)=0 <=> x+3y -4=0.$]

#let tags = ("chapter": 1, "difficulty": 3, "topic": "cực trị không điều kiện")

// template
#let aquestion = (
  "stem": stem,
  "choice0": choice0,
  "choice1": choice1,
  "choice2": choice2,
  "choice3": choice3,
  "correct_choice": correct_choice,
  "solution": solution,
  "tags": tags
)


#questions.push(aquestion) 

