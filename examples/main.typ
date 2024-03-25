#import "@preview/suiji:0.1.0": *
#import "template.typ": *
#import "utils.typ": *
// #import "bank.typ": questions
#import "bank/multiple_choice_questions.typ": questions
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
#let number_of_questions = questions.len()

#let seed = gen-rng(120) 
#let permute_choices_bool = true 
#let permute_questions_bool = false 
#let permuted_choices = permute_choices(seed, number_of_questions, permute_choices_bool)
#let permuted_questions = permute_questions(seed, number_of_questions, permute_questions_bool)


//------------------------------------------------
//      Contents 
//------------------------------------------------




#show: project.with(
  title: "Đề thi thử Toán 10 GHK2",
  authors: ("Thời gian: 90p, Số câu: " + str(questions.len())+"TN, Mã đề: 003",),
  watermark_content: [*Tran Thu Le*],
  footer_left: link("https://www.facebook.com/TTranThuLe/")[#underline(text(blue)[Tran Thu Le])],
  footer_right: counter(page).display("1/1",both: true),
)

// = Trắc nghiệm \ 
#layout_questions(questions, show_options, permuted_questions, permuted_choices)



#if show_answer {
  v(2em)
  [*Đáp án Mã đề: 003*]
  display_list_of_correct_choices(questions, permuted_questions, permuted_choices)
}

