#import "@preview/suiji:0.1.0": *


#let permute_choices(random_seed) = {
    let (s, perm) = shuffle(random_seed, range(4))
    [seed #s \ ]
    return perm 
}

#let permute_questions(random_seed, number_of_questions) = {
  let (_, hoanvi) = shuffle(random_seed, range(number_of_questions))
  return hoanvi
}

#let format_a_choice(choice: str, correct: false) = {
  let choice = [*#choice*]
  if correct {
    choice = highlight(underline(choice))
  }
  return choice 
} 

#let get_original_position_of_correct_answer(question) = {
  let cac_dapan = (
      question.caua, 
      question.caub,
      question.cauc,
      question.caud,
  )
  let dapandung_vitri_bandau = 0
  for i in (0,1,2,3) {
    if cac_dapan.at(i) == question.dapandung {
      dapandung_vitri_bandau = i 
      break
    }    
  }
  return dapandung_vitri_bandau
}

#let get_position_of_correct_answer_after_permutation(question, permutation) = {
  let dapandung_vitri_bandau = get_original_position_of_correct_answer(question) 
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
      question.caua, 
      question.caub,
      question.cauc,
      question.caud,
  )

  let dapandung_vitri_bandau = get_original_position_of_correct_answer(question)

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
  // [This is display_choices function \ ]
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
}

