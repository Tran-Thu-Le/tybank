#import "macros.typ": *
#import "template.typ": *
// #import "utils.typ": *
#import "bank.typ": cau1, cau2, cau3, cau4, cau5, cau6, cau7, cau8, cau9, cau10
#import "@preview/suiji:0.1.0": *
#let show_answer = true
// #let show_answer = false
#let permute_bool = true
// #let permute_bool = false 
#let seed = gen-rng(120) 

#let questions = (cau1, cau2, cau3, cau4, cau5, cau6, cau7, cau8, cau9, cau10)
#show: project.with(
  title: "Đề thi thử Toán 10 GHK2",
  authors: ("Thời gian: 90p, Số câu: " + str(questions.len())+"TN, Mã đề: 003",),
)
#layout_questions(questions, show_answer, permute_bool, seed)

