#import "macros.typ": *
#let pttq = [phương trình tổng quát]
#let Pttq = [Phương trình tổng quát]

#let ptts = [phương trình tham số]
#let Ptts = [Phương trình tham số]
#let vector(x)=$arrow(#x)$

// --------------------------
//    Cau 1 
// --------------------------

#let cauhoi = [#Ptts của đường thẳng $Delta: x+y-1=0$ có phương trình:]

#let caua = [$display(cases(x= t, y= 1-t))$]
// #let caua = [#lorem(5)]
#let caub = [$display(cases(x= 2t, y= 1-t))$]
#let cauc = [$display(cases(x= t, y= 1+t))$]
#let caud = [$display(cases(x= 2t, y= 1+t))$]

#let dapandung = caua

#let loigiai = [Ta có xét điểm $M_0(0, 1)$ thuộc $Delta$. Vì $Delta$ có vector pháp tuyến $vector(n)=(1,1)$, suy ra vector chỉ phương $vector(u)=(1, -1)$. Từ đó áp dụng công thức #ptts.]

#let tags = ("chapter": 1, "difficulty": 1, "topic": "giới hạn")

// template
#let cautracnghiem = (
  "cauhoi": cauhoi,
  "caua": caua,
  "caub": caub,
  "cauc": cauc,
  "caud": caud,
  "dapandung": dapandung,
  "loigiai": loigiai,
  "tags": tags
)

#let cau1 = cautracnghiem 

// --------------------------
//    Cau 2
// --------------------------
#let cauhoi = [#Pttq của đường thẳng $Delta: cases(x=1+2t, y=1-3t)$ là:]

#let caua = [$3x+2y-5=0$]
#let caub = [$-3x+2y +1=0$]
#let cauc = [$3x-2y-1=0$]
#let caud = [$2x+3y-5=0$]

#let dapandung = caua

#let loigiai = [Rút $t$ ta được $t = (x-1)/2=(y-1)/(-3)$. Nên #pttq là: $-3(x-1) = 2(y-1) <=>  3x+2y -5=0$]

#let tags = ("chapter": 1, "difficulty": 1, "topic": "giới hạn")

// template
#let cautracnghiem = (
  "cauhoi": cauhoi,
  "caua": caua,
  "caub": caub,
  "cauc": cauc,
  "caud": caud,
  "dapandung": dapandung,
  "loigiai": loigiai,
  "tags": tags
)
#let cau2 = cautracnghiem 

// --------------------------
//    Cau 3
// --------------------------
#let cauhoi = [#Pttq đi qua hai điểm $A(0, 1)$ và $B(2, 2)$ là:]

#let caua = [$x-2y+2=0$  ]
#let caub = [$2x+y-6=0$]
#let cauc = [$-2x-y +6=0$ ]
#let caud = [$2x+y-1=0$]

#let dapandung = caua

#let loigiai = [Chọn $vector(u)= vector(A B) = (2, 1)$, suy ra $vector(n) = (-1, 2)$. Ta chọn điểm $A(0, 1)$ thuộc đường thẳng (ta cũng có thể chọn $B$). #Pttq có dạng $-(x-0)+2(y-1)=0 <=> -x+2y -2=0$.]

#let tags = ("chapter": 1, "difficulty": 1, "topic": "liên tục")

// template
#let cautracnghiem = (
  "cauhoi": cauhoi,
  "caua": caua,
  "caub": caub,
  "cauc": cauc,
  "caud": caud,
  "dapandung": dapandung,
  "loigiai": loigiai,
  "tags": tags
)

#let cau3 = cautracnghiem 

// --------------------------
//    Cau 4
// --------------------------

#let cauhoi = [#Pttq của đường thẳng $Delta'$ đi qua $A(0, 1)$ vuông góc  với đường thẳng $Delta: 2x+y-1=0$ là:]

#let caua = [$x-2y+2=0$]
#let caub = [$x-2y+1=0$]
#let cauc = [$2x-y +1=0$]
#let caud = [$2x-y-1=0$]

#let dapandung = caua

#let loigiai = [Vì vector pháp tuyến của $Delta$, đặt là $vector(n)=(2, 1)$, là chỉ phương của $Delta'$ (hãy vẽ hình để kiểm tra). Nên vector pháp tuyến của $Delta'$ là $vector(n')=(-1, 2)$. Vậy #pttq của $Delta'$ là $-(x-0)+2(y-1) <=> -x+2y-2=0$.]

#let tags = ("chapter": 1, "difficulty": 1, "topic": "đạo hàm cấp 1")

// template
#let cautracnghiem = (
  "cauhoi": cauhoi,
  "caua": caua,
  "caub": caub,
  "cauc": cauc,
  "caud": caud,
  "dapandung": dapandung,
  "loigiai": loigiai,
  "tags": tags
)

#let cau4 = cautracnghiem 

// --------------------------
//    Cau 5
// --------------------------
#let cauhoi = [Khoảng cách giữa hai đường thẳng song song $Delta_1: y=2x+1$ và $Delta_2: y=2x+6$ là:]

#let caua = [$sqrt(2)$]
#let caub = [$sqrt(3)$]
#let cauc = [$sqrt(5)$]
#let caud = [$sqrt(7)$]

#let dapandung = cauc

#let loigiai = [
  - _Cách 1._ Áp dụng công thức khoảng cách giữa hai đường thẳng song song được $ d(Delta_1, Delta_2)= (|6-1|)/sqrt(1+(-2)^2)=sqrt(5) $.
  - _Cách 2._ Lấy một điểm thuộc đường này tính khoảng cách đến đường kia.]

#let tags = ("chapter": 1, "difficulty": 1, "topic": "giới hạn")

// template
#let cautracnghiem = (
  "cauhoi": cauhoi,
  "caua": caua,
  "caub": caub,
  "cauc": cauc,
  "caud": caud,
  "dapandung": dapandung,
  "loigiai": loigiai,
  "tags": tags
)

#let cau5 = cautracnghiem 

// --------------------------
//    Cau 6
// --------------------------
#let cauhoi = [Góc giữa hai đường thẳng $Delta_1: y=-0.5x +1$ và $Delta_2: y=2x+1$ bằng:]

#let caua = [$0^o$]
#let caub = [$30^o$]
#let cauc = [$90^o$]
#let caud = [$120^o$]

#let dapandung = cauc

#let loigiai = [
  - _Cách 1._ Tích hai hệ số góc bằng $-1$ nên hai đường thẳng vuông góc với nhau.
  - _Cách 2._ Tính góc giữa hai đường thẳng theo công thức. Ta có $vector(n_1) = (0.5, 1)$ và $vector(n_2) = (-2, 1)$, nên (chú ý cẩn thận quên dấu trị tuyệt đối)
  $ cos(Delta_1, Delta_2) = |cos(vector(n_1), vector(n_2))| =(|0.5 times (-2) + 1 times 1|)/(sqrt(0.5^2+1^2) dot sqrt((-2)^2+1)) =0. $
  Bấm máy $cos^(-1)(0)=90^o $.  
]

#let tags = ("chapter": 1, "difficulty": 1, "topic": "giới hạn")

// template
#let cautracnghiem = (
  "cauhoi": cauhoi,
  "caua": caua,
  "caub": caub,
  "cauc": cauc,
  "caud": caud,
  "dapandung": dapandung,
  "loigiai": loigiai,
  "tags": tags
)
#let cau6 = cautracnghiem 

// --------------------------
//    Cau 7
// --------------------------
#let cauhoi = [Vị trí tương đối của hai đường thẳng $Delta_1: y=2x+1$ và $Delta_2: 3x+y-7=0$ là:]

#let caua =  [song song]
#let caub =  [cắt nhau]
#let cauc =  [trùng nhau]
#let caud = [không xác định]

#let dapandung = caub

#let loigiai = [Đưa hai đường thẳng đã cho về #pttq 
$  Delta_1: y=2x-y+1=0 quad quad Delta_2: 3x+y-7=0 $
- _Cách 1._ Chú ý $vector(n_1)=(2,-1)$ và $vector(n_2)=(3, 1)$ khác tỷ lệ, nên hai đường đã cho cắt nhau.
- _Cách 2._ Bấm máy hệ phương trình, ta thấy có nghiệm, nên hai đường đã cho cắt nhau.
]

#let tags = ("chapter": 1, "difficulty": 1, "topic": "giới hạn")

// template
#let cautracnghiem = (
  "cauhoi": cauhoi,
  "caua": caua,
  "caub": caub,
  "cauc": cauc,
  "caud": caud,
  "dapandung": dapandung,
  "loigiai": loigiai,
  "tags": tags
)
#let cau7 = cautracnghiem 

// --------------------------
//    Cau 8
// --------------------------
#let cauhoi = [Viết #pttq của đường trung trực của cạnh $B C$ trong tam giác $Delta A B C$ với $A(0, 0), B(1, 2), C(3, 0)$.]

#let caua = [$y=x+1$]
#let caub = [$y=x-1$]
#let cauc = [$x+y=1$]
#let caud = [$x+y=-1$]

#let dapandung = caub

#let loigiai = [Gọi $Delta$ là đường trung trực của $B C$. Ta có $Delta$ đi qua trung điểm $M$ của $B C$ và nhận $vector(B C)$ làm vector pháp tuyến. Ta tính được $M(2, 1)$ (trung bình tọa độ của $B$ và $C$) và $vector(n)= vector(B C)=(2, -2)$ (tọa độ $C$ trừ tọa độ $B$). #Pttq $Delta: 2(x-2)-2(y-1)=0 <=> 2x-2y-2=0$. Ta có thể viết lại $Delta: y=x-1$.]

#let tags = ("chapter": 1, "difficulty": 1, "topic": "giới hạn")

// template
#let cautracnghiem = (
  "cauhoi": cauhoi,
  "caua": caua,
  "caub": caub,
  "cauc": cauc,
  "caud": caud,
  "dapandung": dapandung,
  "loigiai": loigiai,
  "tags": tags
)
#let cau8 = cautracnghiem 

// --------------------------
//    Cau 9
// --------------------------
#let cauhoi = [Cho tam giác $Delta A B C$ với $A(0, 0), B(1, 2), C(3, 0)$. Viết #pttq của đường thẳng đi qua $B$ và song song với cạnh $A C$.]

#let caua = [$x=-1$]
#let caub = [$x=1$]
#let cauc = [$y=0$]
#let caud = [$y=2$]

#let dapandung = caud

#let loigiai = [Ta có $B(1, 2)$ và $vector(u)=vector(A C)=(3, 0)$, suy ra $vector(n)=(0, 3)$. Nên có $0(x-1)+3(y-2)=0 <=> y=2$.]

#let tags = ("chapter": 1, "difficulty": 1, "topic": "giới hạn")

// template
#let cautracnghiem = (
  "cauhoi": cauhoi,
  "caua": caua,
  "caub": caub,
  "cauc": cauc,
  "caud": caud,
  "dapandung": dapandung,
  "loigiai": loigiai,
  "tags": tags
)

#let cau9 = cautracnghiem 

// --------------------------
//    Cau 10
// --------------------------

#let cauhoi = [Trong tam giác $Delta A B C$, biết //$A(1, 3), B(0, 0)$,
$C(4,0)$. Biết phương trình đường cao $A H: y=x$ và đường cao $B K: x=1$. Tìm #pttq đường cao $C P$.]

#let caua = [$x+3y-8=0$]
#let caub = [$x+3y-4=0$]
#let cauc = [$x+2y-4=0$]
#let caud = [$x+2y-8=0$]

#let dapandung = caub

#let loigiai = [Gọi $X$ là trực tâm là giao của $A H$ và $B K$. ta có $X=(1,1)$. Đường cao $C P$ cũng chính là $C X$. Ta có điểm $C(4, 0)$ và $vector(u)= vector(C X)=(-3, 1)$ hay $vector(n)=(1,3)$. Nên $1(x-4)+3(y-0)=0 <=> x+3y -4=0.$]

#let tags = ("chapter": 1, "difficulty": 3, "topic": "cực trị không điều kiện")

// template
#let cautracnghiem = (
  "cauhoi": cauhoi,
  "caua": caua,
  "caub": caub,
  "cauc": cauc,
  "caud": caud,
  "dapandung": dapandung,
  "loigiai": loigiai,
  "tags": tags
)


#let cau10 = cautracnghiem 
