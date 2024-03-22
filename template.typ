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
    #block(text(weight: 700, 1.75em, title))
  ]

  // Author information.
  pad(
    top: 0.5em,
    bottom: 0.5em,
    x: 2em,
    grid(
      columns: (1fr,) * calc.min(3, authors.len()),
      gutter: 1em,
      ..authors.map(author => align(center, strong(author))),
    ),
  )

  // Main body.
  set par(justify: true)
  body
}



// template for displaying question, choices and solution
#let layout_a_question(order, aquestion,  show_answer, permutation) = [

  // 1. Draw a line in show_answer mode
  #if show_answer {[#line(length: 100%)]}

  // 2. Display stem
  // #text(blue)[*Câu #order.*] #aquestion.cauhoi 
  #text(blue)[*Câu #order.*] #aquestion.stem // cau hoi in Vietnameses


  // 3. Format and display choices
  #let formatted_choices = format_choices(aquestion, permutation, correct: show_answer)
  #display_choices(formatted_choices, textwidth)

  // 4. Show answer
  #if show_answer  [*Lời giải.* #aquestion.solution \ ] else  []
] // layout_a_question()

#let layout_questions(questions, show_answer, permuted_questions, permuted_choices) = {
  let number_of_questions = questions.len()
  // let permuted_choices = permute_choices(seed, number_of_questions, permute_bool)
  // let permuted_questions = permute_questions(seed, number_of_questions, permute_bool)


  
  v(1em)
  // let answers =()
  for i in range(number_of_questions) {
    let permuted_index = permuted_questions.at(i)
    layout_a_question(i+1, questions.at(permuted_index), show_answer, permuted_choices.at(i))


    // let correct_choice_after_perm = position_to_abcd(get_position_of_correct_answer_after_permutation(questions.at(permuted_index), permuted_choices.at(i)))
    // let dapani = [Câu #str(i+1). #correct_choice_after_perm]
    // answers.push(dapani)
    
  }


  // if show_answer {
  //   // pagebreak()
  //   [= Đáp án Mã đề: 003]
  //   for i in range(number_of_questions) {
  //     if calc.rem(i, 5)==0 {
  //       [\ ]
  //     }
  //     [#answers.at(i) \ ]
      
  //   }
  // }

}
