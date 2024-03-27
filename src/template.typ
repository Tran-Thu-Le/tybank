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
#let project( watermark_content: content,
              footer_left: content,
              footer_right: content,
              body) = {
  // Set the document's basic properties.
  // set document(author: authors, title: title)
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

  // set heading(numbering: "1.1.")
  set heading(numbering: "I.")


  set text(font: "New Computer Modern", lang: "en")
  show math.equation: set text(weight: 400)

  // Main body.
  set par(justify: true)
  body
}


#let format_tags(tags, tags_header) = {
  let keys = tags.keys()
  let values = tags.values()
  // let anarray = range(keys.len()) 
  let thetags = ""
  for i in range(keys.len()) {
    thetags += [_#keys.at(i)_] + ": " + str(values.at(i)) + ",   "
  }
  [#tags_header #thetags \ ]
}


// ---------------------------------------------
//    Template for displaying one question, choices and solution
// ---------------------------------------------
#let layout_a_question(order,
                        aquestion,
                        show_options,
                        permutation) = [
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



#let format_tags(tags, tags_header) = {
  let keys = tags.keys()
  let values = tags.values()
  // let anarray = range(keys.len()) 
  let thetags = ""
  for i in range(keys.len()) {
    thetags += [_#keys.at(i)_] + ": " + str(values.at(i)) + ",   "
  }
  [#tags_header #thetags \ ]
}

// ---------------------------------------------
//    Template for displaying list of questions
// ---------------------------------------------
#let layout_questions(questions, show_options, permuted_questions, permuted_order) = {
  let (show_answer, show_solution, show_tags) = (show_options.answer, show_options.solution, show_options.tags)
  let number_of_questions = questions.len()

  v(1em)
  for i in range(number_of_questions) {
    let permuted_index = permuted_questions.at(i)
    layout_a_question(i+1, questions.at(permuted_index), show_options, permuted_order.at(i))
    
  }
} // end of layout_questions()



// ---------------------------------------------
//    Template for fomatting many types of questions
// ---------------------------------------------

// true false
#let format-tfq(
  atfq, // a-true-false-question
  order: 0,
  permuted_order: none,
  format: (
    stem: order=>text(blue)[*Question #order.*],
    result: [*Result.* ],
    solution: [*Solution.* ],
    tags: [*Tags.* ],
  ),
  display: (
    result: true,
    solution: true,
    tags: true,
  ),
) = {
  let error = "Error in function template.format-tfq(): " 
  assert(type(atfq) == dictionary,
          message: error + "statements should be of type array, found " + str(type(atfq)))
  // assert(atfq.tags.type == "tfq",
  //         message: error + "incorrect type")
  let aquestion = atfq

  // [*Question #order.* #atfq.stem \ ]
  [#format.at("stem")(order) #atfq.stem \ ]

  let n= atfq.statements.len() 
  let new_statements = permute_array(aquestion.statements, permuted_order)
  set enum(numbering: "a)")
  for (i, s) in new_statements.enumerate() {
    [+ #s \ ]
  }
  
  if permuted_order != none { 
    let new_results = permute_array(aquestion.result, permuted_order)
    [#format.result #new_results \ ]
  }

  if display.result [#format.result  #atfq.result \ ]

  if display.solution [#format.solution #atfq.solution \ ]

  // [#format.tags #atfq.tags ]
  if display.tags [#format_tags(aquestion.tags, format.tags)]


}

// multiple choice
#let format-mcq(
  amcq, // a-true-false-question
  order: 0,
  permuted_order: none, //array
  format: (
    stem: order=>text(blue)[*Question #order.*],
    result: [*Result.* ],
    solution: [*Solution.* ],
    tags: [*Tags.* ],
  ),
  display: (
    result: true,
    solution: true,
    tags: true,
  ),
) = {
  let error = "Error in function template.format-mcq(): " 
  assert(type(amcq) == dictionary,
          message: error + "statements should be of type array, found " + str(type(amcq)))
  // assert(atfq.tags.type == "mcq",
  //         message: error + "incorrect type")
  let aquestion=amcq
  let dapan_nhan = ("A.", "B.", "C.", "D.") 


  let (show_result, show_solution, show_tags) = (display.result, display.solution, display.tags)

  // 1. Draw a line in show_result mode
  // if show_solution {[#line(length: 100%)]}

  // 2. Display stem
  [#format.at("stem")(order) #aquestion.stem\ ] // cau hoi in Vietnameses

  // 3. Format and display choices
    let get_position_of_correct_answer_after_permutation(question, permuted_order) = {
    // let dapandung_vitri_bandau = question.correct_choice 
    for i in (0,1,2,3) {
      if question.result == permuted_order.at(i) {
        return i
        break
      }    
    }
  }
  let display_choices(choices, textwidth: text_width) = {
    context {
      let widthof(x) = measure(x).width // measure() can only be called inside context
      let cau-dai-nhat = calc.max(widthof(choices.at(0)),
                                  widthof(choices.at(1)),
                                  widthof(choices.at(2)),
                                  widthof(choices.at(3)))

      let (caua, caub, cauc, caud) = choices

      if cau-dai-nhat < 0.2*textwidth {
        grid(
          columns: (1fr, 1fr, 1fr, 1fr),
          gutter: 10pt,
          caua,
          caub,
          cauc,
          caud,
        )
      } else if cau-dai-nhat < 0.45*textwidth {
        grid(
          columns: (1fr, 1fr),
          gutter: 10pt,
          caua,
          caub,
          cauc,
          caud,
        )
      } else {
        grid(
          columns: (1fr),
          gutter: 10pt,
          caua,
          caub,
          cauc,
          caud,
        )
      }
    } // end of context
  } // end of display_choices()
  let format_choices(aquestion, permuted_order: (0,1,2,3,4), correct: false)={
    let noidung_dinhdang = ()
    // let dapan_nhan = ("A.", "B.", "C.", "D.") 
    let luachon_noidung = (..aquestion.choices)

    let dapandung_vitri_bandau = aquestion.result

    for i in (0,1,2,3)  {
      let dapan_kytu = format_a_choice(choice: dapan_nhan.at(i), correct: correct and permuted_order.at(i) == dapandung_vitri_bandau)
      noidung_dinhdang.push([#(dapan_kytu + " " +  luachon_noidung.at(permuted_order.at(i))).])
    }
    return noidung_dinhdang
  } // end of format_choices()
  // we first format the choices and then display the choices
  let formatted_choices = format_choices(aquestion, permuted_order: permuted_order, correct: show_result)
  display_choices(formatted_choices, textwidth: text_width)


  let position_after_permutation = permuted_order.position(i => i==aquestion.result)
  if display.result [#format.result #format_a_choice(choice: dapan_nhan.at(position_after_permutation), correct: true)\ ]

  // 4. Show answer
  if display.solution  [#format.solution #aquestion.solution \ ] 


  if display.tags {format_tags(aquestion.tags, format.tags)}


} //end of format_mc()




// short answer
#let format-saq(
  asaq, // a-true-false-question
  order: 0,
  // permute_choices: false,
  format: (
    stem: order=>text(blue)[*Question #order.*],
    result: [*Result.* ],
    solution: [*Solution.* ],
    tags: [*Tags.* ],
  ),
  display: (
    result: true,
    solution: true,
    tags: true,
  ),
) = {
  let error = "Error in function template.format-saq(): " 
  assert(type(asaq) == dictionary,
          message: error + "statements should be of type array, found " + str(type(asaq)))
  let aquestion = asaq


  let (show_result, show_solution, show_tags) = (display.result, display.solution, display.tags)

  // 1. Draw a line in show_result mode
  // if show_solution {[#line(length: 100%)]}

  // 2. Display stem
  [#format.at("stem")(order) #aquestion.stem\ ] // cau hoi in Vietnameses

  // 3. Format and display choices
  // let formatted_choices = format_choices(aquestion, permute_choices, correct: show_result)
  // display_choices(formatted_choices, text_width)
  if display.result {[#format.result #aquestion.result \ ]}

  // 4. Show answer
  if show_solution  [#format.solution #aquestion.solution \ ] 

  // 4. Show answer
  // if display.tags [#format.tags #aquestion.tags \ ]
  if display.tags {format_tags(aquestion.tags, format.tags)}

}


