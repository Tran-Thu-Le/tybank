#import "@preview/suiji:0.1.0": *
#import "template.typ": *
#import "utils.typ": *
#import "bank.typ": cau1, cau2, cau3, cau4, cau5, cau6, cau7, cau8, cau9, cau10
#let show_answer = true
// #let show_answer = false
#let show_solution = true
// #let show_solution = false
#let show_tags = true
// #let show_tags = false
#let show_options = (
    "answer": show_answer,
    "solution": show_solution, 
    "tags": show_tags
)
#let seed = gen-rng(121) 
#let permute_choices_bool = true 
#let permute_questions_bool = true 

#let questions = (cau1, cau2, cau3, cau4, cau5, cau6, cau7, cau8, cau9, cau10, cau1, cau2, cau3, cau4, cau5, cau6, cau7, cau8, cau9, cau10)
#let number_of_questions = questions.len()
#let permuted_choices = permute_choices(seed, number_of_questions, permute_choices_bool)
#let permuted_questions = permute_questions(seed, number_of_questions, permute_questions_bool)


//------------------------------------------------
//      Contents 
//------------------------------------------------




#show: project.with(
  title: "Đề thi thử Toán 10 GHK2",
  authors: ("Thời gian: 90p, Số câu: " + str(questions.len())+"TN, Mã đề: 003",),
)

// = Trắc nghiệm \ 
#layout_questions(questions, show_options, permuted_questions, permuted_choices)



#if show_answer {
  v(2em)
  [*Đáp án Mã đề: 003*]
  display_list_of_correct_choices(questions, permuted_questions, permuted_choices)
}

