#import "utils.typ": *

// A4 size
#let pagewidth = 210mm 
#let pageheight = 297mm
#let text-percent = 0.8
#let margin-percent = calc.max(1-text-percent, 0)/2
#let marginwidth = margin-percent*pagewidth
#let marginheight = margin-percent*pageheight 
#let textwidth = text-percent*pagewidth
#let textheight = text-percent*pageheight 

#let project(title: "", authors: (), body) = {
  // Set the document's basic properties.
  set document(author: authors, title: title)
  set page(numbering: "1",
            number-align: center,
            margin: (x: marginwidth, y: marginheight),
            width: pagewidth,
            height: pageheight,
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

  // Author information.
  // pad(
  //   top: 0.5em,
  //   bottom: 0.5em,
  //   x: 2em,
  //   grid(
  //     columns: (1fr,) * calc.min(3, authors.len()),
  //     gutter: 1em,
  //     ..authors.map(author => align(center, strong(author))),
  //   ),
  // )

  // Main body.
  set par(justify: true)
  body
}



// template for displaying question, choices and solution
#let layout_a_question(order, aquestion,  show_options, permutation) = [
  #let (show_answer, show_solution, show_tags) = (show_options.answer, show_options.solution, show_options.tags)

  // 1. Draw a line in show_answer mode
  #if show_solution {[#line(length: 100%)]}

  // 2. Display stem
  // #text(blue)[*Câu #order.*] #aquestion.cauhoi 
  #text(blue)[*Câu #order.*] #aquestion.stem // cau hoi in Vietnameses


  // 3. Format and display choices
  #let formatted_choices = format_choices(aquestion, permutation, correct: show_answer)
  #display_choices(formatted_choices, textwidth)

  // 4. Show answer
  #if show_solution  [*Lời giải.* #aquestion.solution \ ] else  []

  #if show_tags [*Nhãn.* #aquestion.tags \ ]
] // layout_a_question()

#let layout_questions(questions, show_options, permuted_questions, permuted_choices) = {
  let (show_answer, show_solution, show_tags) = (show_options.answer, show_options.solution, show_options.tags)
  let number_of_questions = questions.len()


  
  v(1em)
  for i in range(number_of_questions) {
    let permuted_index = permuted_questions.at(i)
    layout_a_question(i+1, questions.at(permuted_index), show_options, permuted_choices.at(i))
    
  }
}
