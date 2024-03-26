#import "@preview/diagraph:0.2.2": *
#set par(justify: true)
#set heading(numbering: "1.1.")
#set text(font: "New Computer Modern", lang: "en")


//---------------------------------------------------------
//    Contents
//---------------------------------------------------------


#align(center)[#text(size: 2em)[*Documentation for Tybank*]]

*Abstract.* Tybank is a Typst's package for creating various types of questions including: multiple choices, true false, short answer, ... 
#let renderc(code) = render(code.text)


= Dependency of objects in the project 


#raw-render(width: 100%,
```
digraph {
  rankdir=BT;

  a_question, options, header -> formatter -> an_exam
  permuted_display -> options 
  // result, solution, remark, tags -> show
  datastruct -> stem_choices_etc -> a_question //
  // [label="utils"]
  variables -> a_question, options
  // bank -> questions
  // variables -> a_question
  user -> header, permuted_display, variables [color=blue] 
  // expert -> questions [color=orange]
  developer -> formatter, datastruct [color=red]
}
```
)


#pagebreak()
= Projection structure 


#renderc(
```
digraph {
  examples -> bank, tybank
  bank -> data_structure 
  tybank -> data_structure
  data_structure -> tags, mcq_tfq_saq
  tybank -> formatter, permutation 
  formatter -> a_many_questions
  permutation -> questions, choices
}
```
)
= Dependence of files/folders of this repository 


#renderc(
```
digraph {
  // rankdir=LR;
  utils -> data 
  question_types -> utils
  tybank -> question_types
  Bank -> tybank
  Examples -> Bank
}
```
)




