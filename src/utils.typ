#import "@preview/suiji:0.1.0": *

#let print(x) = [#x\ ]

#let permute_choices(random_seed,
                    number_of_questions,
                    permute_bool) = {
    let perm = range(number_of_questions).map(x=>range(4))
    if permute_bool {
      for i in range(number_of_questions) {
        (random_seed, perm.at(i)) = shuffle(random_seed, range(4))
      }
    }
    return perm 
}

#let permute_questions(random_seed,
                      number_of_questions,
                      permute_bool) = {
  let hoanvi = range(number_of_questions) 
  if permute_bool {                      
    hoanvi = shuffle(random_seed, range(number_of_questions)).at(1)
  }
  return hoanvi
}

#let format_a_choice(choice: str, correct: false) = {
  let choice = [*#choice*]
  if correct {
    // choice = highlight(underline(choice))
    // choice = rect(highlight(choice))
    choice = box(stroke: black, inset: (x: 1pt, y: 1pt), fill: yellow)[#choice]

    // choice = inline(circle(fill: yellow, height: 2em, stroke: black)[#align(center)[#choice]])
  }
  return choice 
} 


#let get_position_of_correct_answer_after_permutation(question, permutation) = {
  let dapandung_vitri_bandau = question.correct_choice 
  for i in (0,1,2,3) {
    if dapandung_vitri_bandau == permutation.at(i) {
      return i
      break
    }    
  }
}

#let position_to_abcd(i) = {
  if i==0 {
    return "A"
  } else if i==1 {
    return "B"
  } else if i==2 {
    return "C"
  } else if i==3 {
    return "D"
  }
} 

#let format_choices(question, permutation, correct: false)={
  let noidung_dinhdang = ()
  let dapan_nhan = ("A.", "B.", "C.", "D.") 
  let luachon_noidung = (
      question.choice0, 
      question.choice1,
      question.choice2,
      question.choice3,
  )

  let dapandung_vitri_bandau = question.correct_choice

  for i in (0,1,2,3)  {
    let dapan_kytu = format_a_choice(choice: dapan_nhan.at(i), correct: correct and permutation.at(i) == dapandung_vitri_bandau)
    noidung_dinhdang.push([#(dapan_kytu + " " +  luachon_noidung.at(permutation.at(i)))])
  }
  return noidung_dinhdang
}


#let motdong(caua, caub, cauc, caud) = {
  grid(
    columns: (1fr, 1fr, 1fr, 1fr),
    gutter: 10pt,
    caua,
    caub,
    cauc,
    caud,
  )
}


#let haidong(caua, caub, cauc, caud) = {
  grid(
    columns: (1fr, 1fr),
    gutter: 10pt,
    caua,
    caub,
    cauc,
    caud,
  )
}

#let bondong(caua, caub, cauc, caud) = {
  grid(
    columns: (1fr),
    gutter: 10pt,
    caua,
    caub,
    cauc,
    caud,
  )
} 

#let display_choices(choices, textwidth) = {
  context {
    let widthof(x) = measure(x).width // measure() can only be called inside context
    let cau-dai-nhat = calc.max(widthof(choices.at(0)),
                                widthof(choices.at(1)),
                                widthof(choices.at(2)),
                                widthof(choices.at(3)))

    if cau-dai-nhat < 0.2*textwidth {
      motdong(choices.at(0),
      choices.at(1),
      choices.at(2),
      choices.at(3))
    } else if cau-dai-nhat < 0.45*textwidth {
      haidong(choices.at(0),
      choices.at(1),
      choices.at(2),
      choices.at(3)
      )
    } else {
      bondong(choices.at(0),
      choices.at(1),
      choices.at(2),
      choices.at(3)
      )
    }
  } // end of context
} // end of display_choices()

#let display_list_of_correct_choices(questions, permuted_questions, permuted_choices) = {
  let number_of_questions = questions.len()

  let answers =()
  for i in range(number_of_questions) {
    let permuted_index = permuted_questions.at(i)
    let correct_choice_after_perm = position_to_abcd(get_position_of_correct_answer_after_permutation(questions.at(permuted_index), permuted_choices.at(i)))
    let dapani = [Câu #str(i+1). #correct_choice_after_perm]
    answers.push(dapani)
    
  }



  for i in range(number_of_questions) {
    if calc.rem(i, 5)==0 {
      [\ ]
    }
    [#answers.at(i) \ ]
    
  }
}







// --------------------------
//    Variation table
// --------------------------

// #let row0 = "x -oo ... 1 ... 2 ... +oo"
// #let row1 = "y' ... - 0 + 0 - ..."
// // #let row2 = "y +oo arrow.br 2 arrow.tr -2 arrow.br -oo"
// #let row2 = "y +oo down 2 up -2 down -oo"

#let vartab_str2typ(..strings) ={
  let a = ()
  for (i, astr) in strings.pos().enumerate() {
    let items = astr.split()
    for (i,item) in items.enumerate() {
      if item == "..." {
        items.at(i) = " "
      } else if item == "up" {
        items.at(i) = "arrow.tr"
      } else if item == "down" {
        items.at(i) = "arrow.br"
      }
    }

    let items = "($"+items.join("$, $")+"$)"
    let items = eval(items)
    a.push(items)
  }
  return a
}
#let variation_table(..rows) = {
  let the_rows = vartab_str2typ(..rows)
  let n = the_rows.at(0).len()
  let new_rows = ()
  for (i,items) in the_rows.enumerate() {
    for (j, item) in items.enumerate() {
      new_rows.push(item)
    }
    if i< the_rows.len()-1 {
      new_rows.push(table.hline(start: 0))
    }
  }

  align(center, 
  table(
    stroke: none,
    align: center,
    table.vline(start: 0, x: 1),
    columns: range(n).map(i=> auto),
    ..new_rows
  ))
}


// #variation_table(row0, row1, row2)

#let permute_array(array, order) = {
  // sort the array according to the order
  let n = array.len() // == order.len()
  let new_array = range(n).map(i => array.at(order.at(i)))
  return new_array
}


