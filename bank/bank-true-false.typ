#import "../tybank.typ": *


#let questions = ()




// -----------------------------------------------

#let stem =[Một cuộc thi bắn cung có $20$ người tham gia. Trong lần bắn đầu tiên có $18$ người bán trúng mục tiêu. Trong lần bắn thứ hai có $15$ người bắn trúng mục tiêu. Trong lần bắn thứ ba chỉ còn $10$ người bắn trúng mục tiêu.]

#let statement0 = [Số người bắn trượt mục tiêu trong lần đầu tiên là $2$.] 

#let statement1 = [Số người bắn trượt mục tiêu trong lần thứ hai là $6$.] 

#let statement2 = [Số người bắn trượt mục tiêu trong lần thứ nhất và thứ hai nhiều nhất là $8$.] 

#let statement3 = [Số người bắn trúng mục tiêu trong cả ba lần ít nhất là $3$.] 

#let statements = (statement0, statement1, statement2, statement3)
#let result = (true, false, true, false)

#let tags = (type: data.type.tfq,
            class: data.class._10,
            source: data.source.bgd,
            year: data.year._2024
            )

#let solution = [in progress]




#let aquestion = tfq(
  stem,
  statements,
  result: result,
  solution: solution,
  tags: tags,
)
#questions.push(aquestion) 


// -----------------------------------------------

#let stem =[Một cuộc thi bắn cung có $20$ người tham gia. Trong lần bắn đầu tiên có $18$ người bán trúng mục tiêu. Trong lần bắn thứ hai có $15$ người bắn trúng mục tiêu. Trong lần bắn thứ ba chỉ còn $10$ người bắn trúng mục tiêu.]

#let statement0 = [Số người bắn trượt mục tiêu trong lần đầu tiên là $2$.] 

#let statement1 = [Số người bắn trượt mục tiêu trong lần thứ hai là $6$.] 

#let statement2 = [Số người bắn trượt mục tiêu trong lần thứ nhất và thứ hai nhiều nhất là $8$.] 

#let statement3 = [Số người bắn trúng mục tiêu trong cả ba lần ít nhất là $3$.] 

#let statements = (statement0, statement1, statement2, statement3)
#let result = (true, false, true, false)

#let tags = (type: data.type.tfq,
            class: data.class._10,
            source: data.source.bgd,
            year: data.year._2024
            )

#let solution = [Todo]




#let aquestion = tfq(
  stem,
  statements,
  result: result,
  solution: solution,
  tags: tags,
)
#questions.push(aquestion) 