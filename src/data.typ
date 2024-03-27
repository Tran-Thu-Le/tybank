#let data = (
  "type": (
    "mcq": "mcq", // mutiple choice questions 
    "mmq": "mmq", // multiple multiple choice questions 
    "tfq": "tfq", // true false questions 
    "saq": "saq", // short answer questions 
    "fiq": "fiq", // fill in questions
    "mq": "mq", // matching questions
  ),
  "class": (
    "_1": 1,
    "_2": 2,
    "_3": 3,
    "_4": 4,
    "_5": 5,
    "_6": 6,
    "_7": 7,
    "_8": 8,
    "_9": 9,
    "_10": 10,
  ),
  "exam": (
    "hk1": "hk1",
    "ghk1": "ghk1",
    "1t-hk1": "1t-hk1",
    "15p-hk1": "15p-hk1",
    "hk2": "hk2",
    "ghk2": "ghk2",
    "1t-hk2": "1t-hk2",
    "15p-hk2": "15p-hk2",
  ),
  "year": (
    "_2024": 2024,
    "_2023": 2023,
    "_2022": 2022,
    "_2021": 2021,
    "_2020": 2020,
  ),
  "source": (
    "unknown": "unknown",
    "bgd": "bgd", // Bộ giáo dục 
    // "thpt": "thpt",
    // "thcs": "thcs",
    "totnghiep-thpt": "totnghiep-thpt",
    "totnghiep-thcs": "totnghiep-thcs",
    "chinhthuc": "chinhthuc",
    "thithu": "thithu",
    "hsg-thpt": "hsg-thpt",
    "hsg-thcs": "hsg-thcs",
    "olympic": "olympic",
    "hanoi": "hanoi",
    "hcm": "hcm",
    "cantho": "cantho",
    "danang": "danang",
    "nghean": "nghean",
    "bacninh": "bacninh"
  ),
  "difficulty": (
    "_1_": 1, // 1 step of reasoning
    "_2": 2, // 2 steps of reasoning
    "_3": 3, // 3 steps of reasoning
    "_4": 4, // 4 steps of reasoning
    "_5": 5 // >=5 steps/levels of reasoning 
  ),
  "popularity": (
    "rare": "rare",
    // "standard": "standard",
    "common": "common"
  ),
  "choice": (
    "_0": 0,
    "_1": 1,
    "_2": 2,
    "_3": 3,
  ),
  // "true": true,
  // "false": false
)

// multiple choice question
#let mcq(
  stem, // content
  choices, //array of contents
  result: none, // a number from 0 to 4
  solution: none, // solution as a content
  tags: none, // dictionary
  type: "cmq", // do not change this
  var: 1, // variable of a question
) = {
  // assertions

  return (
    stem: stem,
    choices: choices,
    result: result,
    solution: solution,
    tags: tags,
    type: "mcq",
    var: 1
  )
}

// true false question
#let tfq(
  stem, // content
  statements, //array of statements
  result: none, // array of true false
  solution: none, // solution as a content
  tags: none, // dictionary
  type: "tfq", // do not change this
  var: 1, // variable of a question
) = {
  // assertions
  let error = "Error in function question-types.tfq(): " 
  // assert(type(statements) == array, message: error + "statements should be of type array, found " + str(type(statements)))
  // assert(type(results) == array, message: error + "results should be of type array, found " + str(type(statements)))
  assert(statements.len() == result.len(), message: error + "statements and result are of different length")

  return (
    stem: stem,
    statements: statements,
    result: result,
    solution: solution,
    tags: tags,
    var: var,
  )
}



// short answer question
#let saq( 
  stem, // content
  result: none, // a number
  solution: none, // array of solution
  tags: none, // dictionary
  type: "saq", // do not change this
  var: 1, // variable of a question
) = {
  // assertions

  return (
    stem: stem,
    result: result,
    solution: solution,
    tags: tags,
    var: var,
  )
}