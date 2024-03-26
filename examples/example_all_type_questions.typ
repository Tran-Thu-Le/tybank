#import "@preview/suiji:0.1.0": *
#import "../tybank.typ": *
// #import "utils.typ": *
// #import "bank.typ": questions
#import "../bank/bank-multiple-choice.typ": questions as bank-mc
#import "../bank/bank-true-false.typ": questions as bank-tf
#import "../bank/bank-short-answer.typ": questions as bank-sa
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
  title: "Đề thi thử Toán 10 GHK2",
  authors: ("Thời gian: 90p, Số câu: xx TN, Mã đề: 003",),
  watermark_content: [*Tran Thu Le*],
  footer_left: link("https://www.facebook.com/TTranThuLe/")[#underline(text(blue)[Tran Thu Le])],
  footer_right: counter(page).display("1/1",both: true),
)

#let format_header_of_items = (
    stem: order=>text(blue)[*Câu hỏi #order.*],
    result: [*Kết quả.* ],
    solution: [*Lời giải.* ],
    tags: [*Nhãn.* ],
)
    
= Multiple choices

// Hello   xxx yy
// #layout_questions(questions, show_options,   permuted_questions, permuted_choices)

#format-mcq(bank-mc.at(0), order: 1, format: format_header_of_items)



= True False questions
#format-tfq(bank-tf.at(1), order: 2, format: format_header_of_items )

= Short answer 

#format-saq(bank-sa.at(0), order: 3, format: format_header_of_items )





