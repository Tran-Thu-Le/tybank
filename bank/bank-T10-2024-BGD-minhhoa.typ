#import "../tybank.typ": mcq, tfq, saq
#import "../src/macros.typ": *
#import "@preview/cetz:0.2.2": canvas, plot
// #let vector(x)=$arrow(#x)$
#let mcqs = () // important variable: multiple choices questions 
#let tfqs = () // important variable: true false questions 
#let saqs = () // important variable: short answer  questions 


// --------------------------
//    I. Trắc nghiệm
// --------------------------

// --------------------------
//    cau1
// --------------------------
#let stem = [
  Mệnh đề toán học nào sau đây *sai*?
]

#let choice0 = [Số $2$ là số nguyên dương]
#let choice1 = [Số $2$ là số hữu tỉ]
#let choice2 = [Số $2$ là số hữu tỉ dương]
#let choice3 = [Số $2$ không là số nguyên tố]
#let choices =(choice0, choice1, choice2, choice3)

#let result = 3

#let solution = [Todo]

#let tags = (type: "mcq", class: 10, topic: "menhde",
            difficulty: 2, year: 2024, source: "bgd", popularity: "common", )

#let aquestion = (
  "stem": stem,
  "choices": choices,
  "result": result,
  "solution": solution,
  "tags": tags
)

#mcqs.push(aquestion)

// --------------------------
//    cau2
// --------------------------
#let stem = [
  Cho hai tập hợp $A$ và $B$. Tập hợp $A sect B$ là
]

#let choice0 = [tập hợp tất cả các phần tử thuộc $A$ hoặc thuộc $B$]
#let choice1 = [tập hợp tất cả các phần tử vừa thuộc $A$ vừa thuộc $B$]
#let choice2 = [tập hợp các phần tử thuộc $A$ nhưng không thuộc $B$]
#let choice3 = [tập hợp tất cả các phần tử thuộc $B$ nhưng không thuộc $A$]
#let choices =(choice0, choice1, choice2, choice3)

#let result = 1

#let solution = [todo.]

#let tags = (type: "mcq", class: 10, topic: "taphop",
            difficulty: 1, year: 2024, source: "bgd", popularity: "common", )

#let aquestion = (
  "stem": stem,
  "choices": choices,
  "result": result,
  "solution": solution,
  "tags": tags
)

#mcqs.push(aquestion)

// --------------------------
//    cau3
// --------------------------
#let stem = [
  Tập hợp rỗng là
]

#let choice0 = [tập hợp có đúng $1$ phần tử.]
#let choice1 = [tập hợp có đúng $2$ phần tử.]
#let choice2 = [tập hợp có vô số phần tử.]
#let choice3 = [tập hợp không có phần tử nào.]
#let choices =(choice0, choice1, choice2, choice3)

#let result = 3

#let solution = []

#let tags = (type: "mcq", class: 10, topic: "taphop",
            difficulty: 2, year: 2024, source: "bgd", popularity: "common", )

#let aquestion = (
  "stem": stem,
  "choices": choices,
  "result": result,
  "solution": solution,
  "tags": tags
)

#mcqs.push(aquestion)

// --------------------------
//    cau4
// --------------------------
#let stem = [
  Cho hai tập hợp $A$  và $B$  khác $emptyset$. Tập hợp $A$ là tập hợp con của tập hợp  $B$ khi và chỉ khi
]

#let choice0 = [có một phần tử của  $A$ là phần tử của $B$]
#let choice1 = [mọi phần tử của $B$  đều là phần tử của $A$ ]
#let choice2 = [mọi phần tử của $A$ đều là phần tử của $B$]
#let choice3 = [hiệu của $A$ và $B$ là tập hợp khác rỗng]
#let choices =(choice0, choice1, choice2, choice3)

#let result = 2

#let solution = []
#let tags = (type: "mcq", class: 10, topic: "taphop",
            difficulty: 2, year: 2024, source: "bgd", popularity: "common", )

#let aquestion = (
  "stem": stem,
  "choices": choices,
  "result": result,
  "solution": solution,
  "tags": tags
)

#mcqs.push(aquestion)

// --------------------------
//    cau5
// --------------------------
#let stem = [
  Phát biểu nào nào sau đây là đúng?
]

#let choice0 = [Với hai vectơ bất kì $vector(a), vector(b)$  và số thực $k$ , ta có: $k(vector(a)+vector(b))=k vector(a)+k vector(b)$]
#let choice1 = [Với hai vectơ bất kì $vector(a), vector(b)$  và số thực $k$ , ta có: $k(vector(a)+vector(b))=vector(a)k+ vector(b)k$]
#let choice2 = [Với hai vectơ bất kì $vector(a), vector(b)$  và số thực $k$ , ta có: $(vector(a)+vector(b))k=vector(a)k+vector(b)k$]
#let choice3 = [Với hai vectơ bất kì $vector(a), vector(b)$  và số thực $k$ , ta có: $k(vector(a)+vector(b))=k vector(a)+vector(b)k$]
#let choices =(choice0, choice1, choice2, choice3)

#let result = 0

#let solution = [todo.]
#let tags = (type: "mcq", class: 10, topic: "vector",
            difficulty: 1, year: 2024, source: "bgd", popularity: "common", )

#let aquestion = (
  "stem": stem,
  "choices": choices,
  "result": result,
  "solution": solution,
  "tags": tags
)

#mcqs.push(aquestion)

// --------------------------
//    cau6
// --------------------------
#let stem = [
  Cho góc nhọn $alpha$  tùy ý. Phát biểu nào sau đây là đúng?
]

#let choice0 = [$sin(90degree -alpha)=cos(alpha)$]
#let choice1 = [$sin(90degree -alpha)=sin(alpha)$]
#let choice2 = [$sin(90degree -alpha)=-sin(alpha)$]
#let choice3 = [$sin(90degree -alpha)=-cos(alpha)$]
#let choices =(choice0, choice1, choice2, choice3)

#let result = 0

#let solution = [todo.]
#let tags = (type: "mcq", class: 10, topic: "luonggiac",
            difficulty: 2, year: 2024, source: "bgd", popularity: "common", )

#let aquestion = (
  "stem": stem,
  "choices": choices,
  "result": result,
  "solution": solution,
  "tags": tags
)

#mcqs.push(aquestion)


// --------------------------
//    cau7
// --------------------------
#let stem = [
  Cho góc nhọn $alpha$ tùy ý. Phát biểu nào sau đây là đúng?
]

#let choice0 = [$cos(180degree -alpha)=cos(alpha)$]
#let choice1 = [$cos(180degree -alpha)=sin(alpha)$]
#let choice2 = [$cos(180degree -alpha)=-cos(alpha)$]
#let choice3 = [$cos(180degree -alpha)=-sin(alpha)$]
#let choices =(choice0, choice1, choice2, choice3)

#let result = 2

#let solution = [todo.]
#let tags = (type: "mcq", class: 10, topic: "luonggiac",
            difficulty: 2, year: 2024, source: "bgd", popularity: "common", )

#let aquestion = (
  "stem": stem,
  "choices": choices,
  "result": result,
  "solution": solution,
  "tags": tags
)

#mcqs.push(aquestion)



// --------------------------
//    cau8
// --------------------------
#let stem = [
  Cho $G$  là trọng tâm $Delta A B C$  và điểm $M$  tùy ý. Phát biểu nào sau đây là đúng?
]

#let choice0 = [$vector(M A)+vector(M B)+vector(M C)=vector(0)$]
#let choice1 = [$vector(M A)+vector(M B)+vector(M C)=vector(M G)$]
#let choice2 = [$vector(M A)+vector(M B)+vector(M C)=2vector(M G)$]
#let choice3 = [$vector(M A)+vector(M B)+vector(M C)=3vector( M G )$]
#let choices =(choice0, choice1, choice2, choice3)

#let result = 3

#let solution = [todo.]
#let tags = (type: "mcq", class: 10, topic: "vector",
            difficulty: 3, year: 2024, source: "bgd", popularity: "common", )

#let aquestion = (
  "stem": stem,
  "choices": choices,
  "result": result,
  "solution": solution,
  "tags": tags
)

#mcqs.push(aquestion)



// --------------------------
//    cau9
// --------------------------
#let stem = [
  Cho tam giác nhọn $A B C$  nội tiếp đường tròn bán kính $R$. Phát biểu nào sau đây là đúng?
]

#let choice0 = [$(B C)/(sin A)=2R$]
#let choice1 = [$(B C)/(cos A)=2R$]
#let choice2 = [$(A B)/(cos A)=2R$]
#let choice3 = [$(A B)/(sin A)=2R$]
#let choices =(choice0, choice1, choice2, choice3)

#let result = 0

#let solution = [todo.]
#let tags = (type: "mcq", class: 10, topic: "luonggiac",
            difficulty: 2, year: 2024, source: "bgd", popularity: "common", )

#let aquestion = (
  "stem": stem,
  "choices": choices,
  "result": result,
  "solution": solution,
  "tags": tags
)

#mcqs.push(aquestion)


// --------------------------
//    cau10
// --------------------------
#let stem = [
  Cho tam giác $A B C$. Phát biểu nào sau đây là đúng?
]

#let choice0 = [$BC^2 = AB^2+AC^2+ +2AB dot AC cos A$]
#let choice1 = [$BC^2 = AB^2+AC^2+ -2AB dot AC cos A$]
#let choice2 = [$BC^2 = AB^2+AC^2+2AB dot AC sin A$]
#let choice3 = [$BC^2 = AB^2+AC^2-2AB dot AC sin A$]
#let choices =(choice0, choice1, choice2, choice3)

#let result = 1

#let solution = [todo.]
#let tags = (type: "mcq", class: 10, topic: "tamgiac",
            difficulty: 2, year: 2024, source: "bgd", popularity: "common", )

#let aquestion = (
  "stem": stem,
  "choices": choices,
  "result": result,
  "solution": solution,
  "tags": tags
)

#mcqs.push(aquestion)


// --------------------------
//    cau11
// --------------------------
#let stem = [
  Cho đoạn thẳng $AB$ và hai điểm $M, N$  thuộc đoạn thẳng $AB$  sao cho: $2 M A = 3 M B$ . Phát biểu nào sau đây là đúng?
]

#let choice0 = [$2vector(M A)=3vector(M B)$]
#let choice1 = [$2vector(M A)=-3vector(M B)$]
#let choice2 = [$2vector(A B)=3vector(A M)$]
#let choice3 = [$3vector(B M)=vector(B A)$]
#let choices =(choice0, choice1, choice2, choice3)

#let result = 1

#let solution = [todo.]
#let tags = (type: "mcq", class: 10, topic: "vector",
            difficulty: 2, year: 2024, source: "bgd", popularity: "common", )

#let aquestion = (
  "stem": stem,
  "choices": choices,
  "result": result,
  "solution": solution,
  "tags": tags
)

#mcqs.push(aquestion)



// --------------------------
//    cau12
// --------------------------
#let stem = [
  Cho hệ bất phương trình bậc nhất hai ẩn 
  $ cases(
    x-y >= 0\
    x-y <=2\ 
    x+y >=0\
    x+y <=4
  ) $
  có miền nghiệm được biểu diễ bởi là hình tứ giác $O ABC$ (tham khảo hình vẽ).

  Giá trị lớp nhất của biểu thức $L=2x+y$ bằng bao nhiêu?
]

#let choice0 = [$6$]
#let choice1 = [$7$]
#let choice2 = [$8$]
#let choice3 = [$5$]
#let choices =(choice0, choice1, choice2, choice3)

#let result = 1

#let solution = [todo.]
#let tags = (type: "mcq", class: 10, topic: "bpt-b1-2an",
            difficulty: 2, year: 2024, source: "bgd", popularity: "common", )

#let aquestion = (
  "stem": stem,
  "choices": choices,
  "result": result,
  "solution": solution,
  "tags": tags
)

#mcqs.push(aquestion)


// --------------------------
//    II. Đúng sai
// --------------------------

// --------------------------
//    cau1 tf
// --------------------------
#let stem =[Một cuộc thi bắn cung có $20$ người tham gia. Trong lần bắn đầu tiên có $18$ người bán trúng mục tiêu. Trong lần bắn thứ hai có $15$ người bắn trúng mục tiêu. Trong lần bắn thứ ba chỉ còn $10$ người bắn trúng mục tiêu.]

#let statement0 = [Số người bắn trượt mục tiêu trong lần đầu tiên là $2$.] 

#let statement1 = [Số người bắn trượt mục tiêu trong lần thứ hai là $6$.] 

#let statement2 = [Số người bắn trượt mục tiêu trong lần thứ nhất và thứ hai nhiều nhất là $8$.] 

#let statement3 = [Số người bắn trúng mục tiêu trong cả ba lần ít nhất là $3$.] 

#let statements = (statement0, statement1, statement2, statement3)
#let result = (true, false, false, true)

#let tags = (type: "tfq", class: 10, semester: 1, topic: "taphop",
            difficulty: 2, popularity: "common",
            year: 2024,  source: "bgd",  )

#let solution = [todo]


#let aquestion = tfq(
  stem,
  statements,
  result: result,
  solution: solution,
  tags: tags,
)
#tfqs.push(aquestion) 

// --------------------------
//    cau2 tf
// --------------------------
#let stem = [Cho tứ giác $ABC D$ có $M, N$ lần lượt là trung điểm của các cạnh $A B, C D$ . Gọi $O$ là trung điểm của đoạn thẳng $M N$ và $G$ là trọng tâm tam giác $ABC$.]

#let statement0 = [$vector(D A)+vector(D B) = 2vector(D M)$.] 
#let statement1 = [$vector(D A)+vector(D B) + vector(D C)= 2vector(D O)$.] 
#let statement2 = [$vector(D A)+vector(D B) = 2vector(D G)$.] 
#let statement3 = [$vector(D O) = 2vector(D G)$.] 
#let statements = (statement0, statement1, statement2, statement3)
#let result = (true, false, false, false)

#let tags = (type: "tfq", class: 10, semester: 1, topic: "vector",
            difficulty: 2, popularity: "common",
            year: 2024,  source: "bgd",  )

#let solution = [todo]


#let aquestion = tfq(
  stem,
  statements,
  result: result,
  solution: solution,
  tags: tags,
)
#tfqs.push(aquestion) 
// --------------------------
//    cau3 tf
// --------------------------
#let stem =[Cho hình bình hành $A B C D$ . Gọi $O$ là giao điểm của $A C$ và $B D$ (Hình bên).]

#let statement0 = [$vector(O A)$ và $vector(O C)$ là hai vector đối nhau.] 
#let statement1 = [$vector(O B)$ và $vector(D O)$ là hai vector đối nhau.]
#let statement2 = [$vector(O A)+vector(O C)=vector(O B)+vector(O D) $.] 
#let statement3 = [$vector(O A)+vector(O B)+vector(O C)+vector(O D)=vector(A D)+vector(C B) $.]  

#let statements = (statement0, statement1, statement2, statement3)
#let result = (true, false, true, true)

#let tags = (type: "tfq", class: 10, semester: 1, topic: "vector",
            difficulty: 2, popularity: "common",
            year: 2024,  source: "bgd",  )

#let solution = [todo]


#let aquestion = tfq(
  stem,
  statements,
  result: result,
  solution: solution,
  tags: tags,
)
#tfqs.push(aquestion) 
// --------------------------
//    cau4 tf
// --------------------------
#let stem =[
  Lớp 10A có $40$ học sinh, trong đó có $27$ học sinh tham gia câu lạc bộ bóng rổ và $25$ học sinh tham gia câu lạc bộ bóng đá.
]

#let statement0 = [Số học sinh tham gia câu lạc bộ bóng rổ hoặc tham gia câu lạc bộ bóng đá nhiều nhất là 40.] 

#let statement1 = [Số học sinh tham gia cả hai câu lạc bộ bóng rổ và bóng đá ít nhất là 10.] 

#let statement2 = [Số học sinh không tham gia cả hai câu lạc bộ bóng rổ và bóng đá ít nhất là 1.] 

#let statement3 = [Số học sinh không tham gia cả hai câu lạc bộ bóng rổ và bóng đá nhiều nhất là 10.] 

#let statements = (statement0, statement1, statement2, statement3)
#let result = (true, false, false, false)

#let tags = (type: "tfq", class: 10, semester: 1, topic: "taphop",
            difficulty: 2, popularity: "common",
            year: 2024,  source: "bgd",  )

#let solution = [todo]


#let aquestion = tfq(
  stem,
  statements,
  result: result,
  solution: solution,
  tags: tags,
)
#tfqs.push(aquestion) 

// --------------------------
//    II. Trả lời ngắn
// --------------------------
// --------------------------
//    cau1 tra loi ngan
// --------------------------
#let stem =[
  Cho hình chữ nhật $A B C D$ có $A B=4$, $A D=6$. Độ dài của vectơ $vector(u)=vector(A B) + vector(A C)$ bằng bao nhiêu?
]

#let result = 10

#let tags = (type: "saq", class: 10, semester: 1, topic: "vector",
            difficulty: 2, popularity: "common",
            year: 2024,  source: "bgd",  )

#let solution = [todo]


#let aquestion = saq(
  stem,
  result: result,
  solution: solution,
  tags: tags,
)
#saqs.push(aquestion) 


// --------------------------
//    cau2 tra loi ngan
// --------------------------
#let stem =[
  Để đo khoảng cách từ vị trí $A$ đến vị trí $B$ ở hai bên bờ hồ, bạn Hà tiến hành đo khoảng cách $A C$ và các góc $hat( B A C)$, $hat(B C A)$. Kết quả nhận được là: $A C=21m$, $hat(B A C)=58degree$ và $hat( B C A)=80degree$ (Hình bên). Khoảng cách từ vị trí $A$ đến vị trí $B$ là bao nhiêu mét (làm tròn kết quả đến hàng đơn vị của mét)?
]

#let result = 31

#let tags = (type: "saq", class: 10, semester: 1, topic: "tamgiac",
            difficulty: 2, popularity: "common",
            year: 2024,  source: "bgd",  )

#let solution = [todo]


#let aquestion = saq(
  stem,
  result: result,
  solution: solution,
  tags: tags,
)
#saqs.push(aquestion) 

// --------------------------
//    cau3 tra loi ngan
// --------------------------
#let stem =[
  Hai tàu đánh cá cùng xuất phát từ bến $A$ và đi về hai vùng biển khác nhau theo hai nửa đường thẳng tạo với nhau một góc $60degree$. Tàu thứ nhất chạy với tốc độ $8$ hải lí một giờ và tàu thứ hai chạy với tốc độ $12$ hải lí một giờ. Sau đúng $2$ giờ thì khoảng cách giữa hai tàu là bao nhiêu hải lí (làm tròn kết quả đến hàng đơn vị của hải lí)?
]

#let result = 21

#let tags = (type: "saq", class: 10, semester: 1, topic: "tamgiac",
            difficulty: 2, popularity: "common",
            year: 2024,  source: "bgd",  )

#let solution = [todo]


#let aquestion = saq(
  stem,
  result: result,
  solution: solution,
  tags: tags,
)
#saqs.push(aquestion) 
// --------------------------
//    cau4 tra loi ngan
// --------------------------
#let stem =[
  Có $100$ tấm thẻ được đánh số thứ tự từ $1$ đến $100$ và được đặt ngửa trên bàn. Người ta lật ngược các tấm thẻ như sau:
  - Lần thứ nhất, lật ngược tất cả các tấm thẻ có số thứ tự chia hết cho $2$.
  - Lần thứ hai, lật ngược tất cả các tấm thẻ có số thứ tự chia hết cho $5$.
Hỏi sau lần thứ hai, có bao nhiêu tấm thẻ được đặt sấp. Biết rằng, khi bị lật ngược, thẻ đang ngửa sẽ thành sấp và thẻ đang sấp sẽ thành ngửa.
]

#let result = 50

#let tags = (type: "saq", class: 10, semester: 1, topic: "taphop",
            difficulty: 2, popularity: "common",
            year: 2024,  source: "bgd",  )

#let solution = [todo]


#let aquestion = saq(
  stem,
  result: result,
  solution: solution,
  tags: tags,
)
#saqs.push(aquestion) 
// --------------------------
//    cau5 tra loi ngan
// --------------------------
#let stem =[
  Để chế biến một hộp thực phẩm $A$ cần $0.2kg$  cà chua và $0.1kg$  thịt; một hộp thực phẩm $B$ cần $0.2kg$ cà chua và $0.3kg$  thịt. Lợi nhuận thu được từ $1$ hộp thực phẩm  $A$ và $1$ hộp thực phẩm $B$ lần lượt là 4000 đồng và 5000 đồng. Chị Hoa có $2kg$  cà chua và $2kg$  thịt để sản xuất các hộp thực phẩm  $A$ và $B$. Với lượng nguyên liệu như trên, lợi nhuận lớn nhất chị Hoa có thể thu được là bao nhiêu nghìn đồng?
]


#let result = 45

#let tags = (type: "saq", class: 10, semester: 1, topic: "bpt-bac1-2an",
            difficulty: 2, popularity: "common",
            year: 2024,  source: "bgd",  )

#let solution = [todo]


#let aquestion = saq(
  stem,
  result: result,
  solution: solution,
  tags: tags,
)
#saqs.push(aquestion) 
// --------------------------
//    cau6 tra loi ngan
// --------------------------
#let stem =[
  Một xưởng sản xuất bàn và ghế. Thời gian để một công nhân hoàn thiện $1$ chiếc bàn và $1$ chiếc ghế lần lượt là $120$ phút và $30$ phút. Xưởng có $4$ công nhân, mỗi công nhân làm việc không quá $6$ tiếng mỗi ngày. Biết rằng sản phẩm của xưởng luôn được tiêu thụ hết, mỗi chiếc bàn lãi $200$ nghìn đồng, mỗi chiếc ghế lãi $75$ nghìn đồng và số ghế không vượt quá $4$ lần số bàn. Trong một ngày sản xuất, xưởng có thể thu được lợi nhuận lớn nhất là bao nhiêu tiền? Viết câu trả lời theo đơn vị triệu đồng.
]

#let result = 3

#let tags = (type: "saq", class: 10, semester: 1, topic: "menhde",
            difficulty: 2, popularity: "common",
            year: 2024,  source: "bgd",  )

#let solution = [todo]


#let aquestion = saq(
  stem,
  result: result,
  solution: solution,
  tags: tags,
)
#saqs.push(aquestion) 

