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