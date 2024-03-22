// --------------------------
//    Header 
// --------------------------


#import "macros.typ": *
#import "template.typ": *
#import "utils.typ": *
#import "bank.typ": cau1, cau2, cau3, cau4, cau5, cau6, cau7, cau8, cau9, cau10
#import "@preview/suiji:0.1.0": *
#let show_answer = true
// #let show_answer = false
// #let permute_bool = true
#let permute_bool = false 

#let dapan_full = ()
#let seed = gen-rng(123) 
#let so_cau_hoi =10



#let hoanvi_dapan = range(so_cau_hoi).map(x=> range(4))
#let hoanvi_cauhoi = range(so_cau_hoi)
#if permute_bool {
  hoanvi_dapan = range(so_cau_hoi).map(x=> permute_choices(seed))
  hoanvi_cauhoi = permute_questions(seed, so_cau_hoi)
}

#let cau = (cau1, cau2, cau3, cau4, cau5, cau6, cau7, cau8, cau9, cau10)


// -----------------------------------------
//    Show question and titles
// -----------------------------------------

#show: project.with(
  title: "Đề thi thử Toán 10 GHK2",
  authors: ("Thời gian: 90p, Số câu: " + str(so_cau_hoi)+"TN, Mã đề: 003",),
)
= Trắc nghiệm xxxyyyzzz
#v(1em)
#let dapan =()
#for i in range(so_cau_hoi) {
  let permuted_index = hoanvi_cauhoi.at(i)
  print(i+1, cau.at(permuted_index), show_answer, hoanvi_dapan.at(i))


  let dapani = [Câu #str(i+1). #position_to_abcd(get_position_of_correct_answer_after_permutation(cau.at(permuted_index), hoanvi_dapan.at(i)))]
  dapan.push(dapani)
  
}


#if show_answer {
  // pagebreak()
  [= Đáp án Mã đề: 003]
  for i in range(so_cau_hoi) {
    if calc.rem(i, 5)==0 {
      [\ ]
    }
    [#dapan.at(i) \ ]
    
  }
}

