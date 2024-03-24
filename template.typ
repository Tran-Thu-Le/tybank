#import "utils.typ": *

// ---------------------------------------------
//    Parameters of the template
// ---------------------------------------------
// A4 size 
#let page_width = 210mm 
#let page_height = 297mm
#let text_percent = 0.8
#let margin_percent = calc.max(1-text_percent, 0)/2
#let margin_width = margin_percent*page_width
#let margin_height = margin_percent*page_height 
#let text_width = text_percent*page_width
#let text_height = text_percent*page_height 


// ---------------------------------------------
//    Set project
// ---------------------------------------------
#let project(title: "",
              authors: (),
              watermark_content: content,
              footer_left: content,
              footer_right: content,
              body) = {
  // Set the document's basic properties.
  set document(author: authors, title: title)
  let watermark = rotate(24deg, text(80pt, fill: rgb("E7DCFF"), watermark_content))
  let footer =  context [
  #line(length: 100%, stroke: (paint: blue, thickness: 2pt, cap: "round"))
  #footer_left
  #h(1fr)
  #footer_right
]
  set page(numbering: "1",
            number-align: center,
            margin: (x: margin_width, y: margin_height),
            width: page_width,
            height: page_height,
            background: watermark,
            footer: footer
  )

  set heading(numbering: "1.1.")

  set text(font: "New Computer Modern", lang: "en")
  show math.equation: set text(weight: 400)

  // Title row.
  align(center)[

    #let stroke = none
    #let format_title(x) = text(weight: 700, 1.5em, x)

    #grid(
      columns: (1fr, 1fr),
      // rows: (auto, 60pt),
      gutter: 1em,
      fill: none,
      rect(stroke: stroke, width: 100%)[#align(center)[#format_title(title) \  \ Thời gian: 90p, Mã đề: 003]],
      rect(stroke: stroke, width: 100%)[#align(left)[#format_title[*Họ tên:*] \ \ Lớp: ]]
    )
  ]


  // Main body.
  set par(justify: true)
  body
}


// ---------------------------------------------
//    Template for displaying one question, choices and solution
// ---------------------------------------------
#let layout_a_question(order, aquestion,  show_options, permutation) = [
  #let (show_answer, show_solution, show_tags) = (show_options.answer, show_options.solution, show_options.tags)

  // 1. Draw a line in show_answer mode
  #if show_solution {[#line(length: 100%)]}

  // 2. Display stem
  #text(blue)[*Câu #order:*] #aquestion.stem // cau hoi in Vietnameses

  // 3. Format and display choices
  #let formatted_choices = format_choices(aquestion, permutation, correct: show_answer)
  #display_choices(formatted_choices, text_width)

  // 4. Show answer
  #if show_solution  [*Lời giải.* #aquestion.solution \ ] 

  // 4. Show answer
  #if show_tags [*Nhãn.* #aquestion.tags \ ]
] // end of layout_a_question()



// ---------------------------------------------
//    Template for displaying list of questions
// ---------------------------------------------
#let layout_questions(questions, show_options, permuted_questions, permuted_choices) = {
  let (show_answer, show_solution, show_tags) = (show_options.answer, show_options.solution, show_options.tags)
  let number_of_questions = questions.len()

  v(1em)
  for i in range(number_of_questions) {
    let permuted_index = permuted_questions.at(i)
    layout_a_question(i+1, questions.at(permuted_index), show_options, permuted_choices.at(i))
    
  }
} // end of layout_questions()
