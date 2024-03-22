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
    choice = highlight(underline(choice))
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
  let dapan_nhan = ("A", "B", "C", "D") 
  let luachon_noidung = (
      question.choice0, 
      question.choice1,
      question.choice2,
      question.choice3,
  )

  let dapandung_vitri_bandau = question.correct_choice

  for i in (0,1,2,3)  {
    let dapan_kytu = format_a_choice(choice: dapan_nhan.at(i), correct: correct and permutation.at(i) == dapandung_vitri_bandau)
    noidung_dinhdang.push([#(dapan_kytu + ". " +  luachon_noidung.at(permutation.at(i)))])
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

