
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


  // let a = page.width  

  // [The width of page is #a]

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

#let lay_dapan(cautracnghiem, hoanvi) = {
  let cac_dapan = (
      cautracnghiem.caua, 
      cautracnghiem.caub,
      cautracnghiem.cauc,
      cautracnghiem.caud,
  )

  // dapan_max_width = calc.max()
  
  let dapandung_vitri_bandau = 0
  for i in (0,1,2,3) {
    if cac_dapan.at(i) == cautracnghiem.dapandung {
      dapandung_vitri_bandau = i 
      break
    }    
  }
  for i in (0,1,2,3) {
    if dapandung_vitri_bandau == hoanvi.at(i) {
      return i
      break
    }    
  }
}

#let vitri_to_abcd(i) = {
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

// template 
#let print(cautracnghiem, stt, inloigiai, hoanvi) = {
[
#text(blue)[*Câu #stt.*] #cautracnghiem.cauhoi 

#let luachon_noidung = (
    cautracnghiem.caua, 
    cautracnghiem.caub,
    cautracnghiem.cauc,
    cautracnghiem.caud,
)

#let noidung_dinhdang = ([], [], [], [])

#let dapan_nhan = ("A", "B", "C", "D") 



#let dapandung_vitri_bandau = 0  
#for i in (0,1,2,3)  {
  if luachon_noidung.at(i) == cautracnghiem.dapandung {
    dapandung_vitri_bandau = i 
    break
  } 
  // 
}



#for i in (0,1,2,3)  {
  let dapan_kytu = [*#dapan_nhan.at(i)*]
  if hoanvi.at(i) == dapandung_vitri_bandau {
    if inloigiai {
      dapan_kytu =  highlight(underline(dapan_kytu))
    }
  }
  noidung_dinhdang.at(i) = [#(dapan_kytu + ". " +  luachon_noidung.at(hoanvi.at(i)))]

}


// [*Bat dau noi dung dinh dang*] 

#context {
  let widthof(x) = measure(x).width // measure() can only be called inside context

  let cau-dai-nhat = calc.max(widthof(noidung_dinhdang.at(0)),
                              widthof(noidung_dinhdang.at(1)),
                              widthof(noidung_dinhdang.at(2)),
                              widthof(noidung_dinhdang.at(3)))

  if cau-dai-nhat < 0.2*textwidth {
    motdong(noidung_dinhdang.at(0),
    noidung_dinhdang.at(1),
    noidung_dinhdang.at(2),
    noidung_dinhdang.at(3))
  } else if cau-dai-nhat < 0.45*textwidth {
    haidong(noidung_dinhdang.at(0),
    noidung_dinhdang.at(1),
    noidung_dinhdang.at(2),
    noidung_dinhdang.at(3)
    )
  } else {
    bondong(noidung_dinhdang.at(0),
    noidung_dinhdang.at(1),
    noidung_dinhdang.at(2),
    noidung_dinhdang.at(3)
    )
  }
}

#if inloigiai  [*Lời giải.* #cautracnghiem.loigiai \ #line(length: 100%) ] else  []

]
}