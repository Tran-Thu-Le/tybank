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
#let print(stt, cautracnghiem,  inloigiai, hoanvi) = [
  #text(blue)[*Câu #stt.*] #cautracnghiem.cauhoi 

  #let noidung_dinhdang = format_choices(cautracnghiem, hoanvi, correct: inloigiai)

  #display_choices(noidung_dinhdang, textwidth)

  #if inloigiai  [*Lời giải.* #cautracnghiem.loigiai \ #line(length: 100%) ] else  []

] // end of print()
