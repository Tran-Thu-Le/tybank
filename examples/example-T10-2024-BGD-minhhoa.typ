#import "@preview/suiji:0.1.0": *
#import "../tybank.typ": *
#import "../bank/bank-T10-2024-BGD-minhhoa.typ": mcqs, tfqs, saqs

#let show_line = true
#let show_answer = true
// #let show_answer = false
// #let show_solution = true
#let show_solution = false
// #let show_tags = true
#let show_tags = false
#let show_options = (
    "answer": show_answer,
    "solution": show_solution, 
    "tags": show_tags
)
// // #let number_of_questions = questions.len()

// #let seed = gen-rng(120) 
// #let permute_choices_bool = true 
// #let permute_questions_bool = false 
// #let permuted_choices = permute_choices(seed, number_of_questions, permute_choices_bool)
// #let permuted_questions = permute_questions(seed, number_of_questions, permute_questions_bool)


//------------------------------------------------
//      Contents 
//------------------------------------------------




#show: project.with(
  title: "BỘ GIÁO DỤC",
  authors: ("Đề minh họa, Thời gian 90p",),
  watermark_content: [*Tran Thu Le*],
  footer_left: link("https://www.facebook.com/TTranThuLe/")[#underline(text(blue)[Tran Thu Le])],
  footer_right: counter(page).display("1/1",both: true),
)

#align(center)[

  #let stroke = none

  #grid(
    columns: (1fr, 1fr),
    gutter: 1em,
    fill: none,
    rect(stroke: stroke, width: 100%)[#align(center)[*BỘ GIÁO DỤC VÀ ĐẠO TẠO* \ ĐỀ MINH HỌA \ ]],
    rect(stroke: stroke, width: 100%)[#align(center)[*ĐỀ KIỂM TRA LỚP 10*\ *Môn: TOÁN*\ Thời gian 90 phút]]
  )
  *Họ, tên thí sinh:* #box[#line(length: 50%, stroke: 0.2pt)]\ 
  *Số báo danh:* #box[#line(length: 50%, stroke: 0.2pt)]

]

#let format_header_of_items = (
    stem: order=>text(blue)[*Câu #order.*],
    result: [*Kết quả.* ],
    solution: [*Lời giải.* ],
    tags: [*Nhãn.* ],
)

= Câu trắc nghiệm nhiều phương án lựa chọn
Thí sinh trả lời từ câu 1 đến câu 12. Mỗi câu hỏi thí sinh chỉ chọn một phương án.

// #let permuted_order = (3,0, 2,1)
#let n = mcqs.len()
#for i in range(n) {
  if show_line {[#line(length: 100%)]}
  format-mcq(mcqs.at(i), order: i+1, format: format_header_of_items, permuted_order: (0,1,2,3))
}



= Câu trắc nghiệm đúng sai.
Thí sinh trả lời câu 1 đến câu 4. Trong mỗi ý a), b) c), d) ở mỗi câu, thí sinh chọn đúng hoặc sai.

// #let permuted_order = (0,3,2,1)
#let n = tfqs.len()
#for i in range(n) {
  if show_line {[#line(length: 100%)]}
  format-tfq(tfqs.at(i), order: i+1, format: format_header_of_items, permuted_order: none)
}
// #format-tfq(bank-tf.at(i), order: i, format: format_header_of_items, permuted_order: permuted_order)

= Câu trắc nghiệm trả lời ngắn
Thí sinh trả lời từ câu 1 đến câu 6.
#let n = saqs.len()
#for i in range(n) {
  if show_line {[#line(length: 100%)]}
  format-saq(saqs.at(i), order: i+1, format: format_header_of_items)
}
// #format-saq(saqs.at(0), order: 3, format: format_header_of_items )





