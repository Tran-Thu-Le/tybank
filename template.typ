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
#let layout_a_question(stt, cautracnghiem,  inloigiai, hoanvi) = [
  #if inloigiai {[#line(length: 100%)]}
  #text(blue)[*Câu #stt.*] #cautracnghiem.cauhoi 

  #let noidung_dinhdang = format_choices(cautracnghiem, hoanvi, correct: inloigiai)

  #display_choices(noidung_dinhdang, textwidth)

  #if inloigiai  [*Lời giải.* #cautracnghiem.loigiai \ ] else  []

] // layout_a_question()

#let layout_questions(questions, show_answer, permute_bool, seed) = {
  let number_of_questions = questions.len()
  let hoanvi_dapan = permute_choices(seed, number_of_questions, permute_bool)
  let hoanvi_cauhoi = permute_questions(seed, number_of_questions, permute_bool)

  // print(permute_bool)
  // print(hoanvi_dapan)
  // print(hoanvi_cauhoi)



  // show: project.with(
  //   title: "Đề thi thử Toán 10 GHK2",
  //   authors: ("Thời gian: 90p, Số câu: " + str(number_of_questions)+"TN, Mã đề: 003",),
  // )

  [= Trắc nghiệm \ ]
  v(1em)
  let dapan =()
  for i in range(number_of_questions) {
    let permuted_index = hoanvi_cauhoi.at(i)
    layout_a_question(i+1, questions.at(permuted_index), show_answer, hoanvi_dapan.at(i))


    let dapandung_sauhoanvi = position_to_abcd(get_position_of_correct_answer_after_permutation(questions.at(permuted_index), hoanvi_dapan.at(i)))
    let dapani = [Câu #str(i+1). #dapandung_sauhoanvi]
    dapan.push(dapani)
    
  }


  if show_answer {
    // pagebreak()
    [= Đáp án Mã đề: 003]
    for i in range(number_of_questions) {
      if calc.rem(i, 5)==0 {
        [\ ]
      }
      [#dapan.at(i) \ ]
      
    }
  }

}
