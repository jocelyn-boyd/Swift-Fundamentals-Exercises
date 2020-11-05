//: [Previous](@previous)

import Foundation

// -------------------------------
// Question 1
// --------------------------------
var applesDict: [String:Int] = ["Adam": 3,
                                "Beth": 5,
                                "Cal": 3,
                                "Dan": 5,
                                "Eve": 4]

// a. set 'eveAppleCount' equal to the number of apples that Eve has
let eveAppleCount = applesDict["Eve"] ?? 0

// b.  Change the number of apples that Adam has to 4
applesDict["Adam"] = 4
//print(applesDict["Adam"] ?? 0)

// c. Set 'calAndDanAppleCount' equal to the sum of Cal and Dan
let calAndDanAppleCount = applesDict["Cal"]! + applesDict["Dan"]!

// d. Set all the values in appleDict to 0
for (key, _) in applesDict {
    applesDict[key] = 0
}

// -------------------------------
// Question 2
// --------------------------------
var citiesDict: [String: String] = ["Afghanistan": "Kabul",
                                    "Russia": "Moscow",
                                    "Iceland": "Reykjavik"]

// a. Set 'russiaCapital' equal to Russia's capital using citiesDict
let russiaCapital = citiesDict["Russia"] ?? ""

// b. Add a new key value pair "Jamaica" and its capital "Kingston"
citiesDict["Jamaica"] = "Kingston"
//print(citiesDict)

// c.Add new key valye pair "Indonesia" and its capital "Jakarta"
citiesDict["Indonesia"] = "Jakarta"
//print(citiesDict)

// -------------------------------
// Question 3
// --------------------------------
// a. Create a dictionary that represents the table below listing an authors name and their comprehensibility score.

/*
 | Author Name        | Score |
 |      :--:          |  :--: |
 | Mark Twain         |  8.9  |
 | Nathaniel Hawthorne|  5.1  |
 | John Steinbeck     |  2.3  |
 | C.S. Lewis         |  9.9  |
 | Jon Krakauer       |  6.1  |
 */

var authorScores = [String: Double]()
authorScores = ["Mark Twain": 8.9,
                "Nathaniel Hawthorne": 5.1,
                "John Steinbeck": 2.3,
                "C.S. Lewis": 9.9,
                "Jon Krakauer": 6.1]

// b. add an additional author named "Erik Larson" with an assigned score of 9.2
authorScores["Erik Larson"] = 9.2

// -------------------------------
// Question 4
// --------------------------------

// You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Find the person with the nest score and pring his full name.

var peopleWithScores: [[String:String]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton",
        "score": "13"
    ],
    [
        "firstName": "Garry",
        "lastName": "McKenzie",
        "score": "23"
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera",
        "score": "10"
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno",
        "score": "3"
    ],
    [
        "fistName": "Noel",
        "lastName": "Bowen",
        "score": "16"
    ]
]

var highestScoringName = ""
var highestScore = 0
for scoreDict in peopleWithScores {
    
    if let scoreStr = scoreDict["score"],
       let score = Int(scoreStr),
       let firstName = scoreDict["firstName"],
       let lastName = scoreDict["lastName"] {
        
        if score > highestScore {
            highestScore = score
            highestScoringName = firstName + " " + lastName
        }
    }
}
//print(highestScoringName)

// -------------------------------
// Question 5
// --------------------------------

/*
Write code below that cubeDict maps the numbers between 1 and 20 inclusive to their cubes. A number's cube is that number multipled by itself twice:

 Sample output:
 
 cubeDict.count // -> 20
 cubeDict[2]    // -> 8
 cubeDict[3]    // -> 27
 cubeDict[20]   // -> 8000
 cubeDict[14]   // -> 2744
 */

var cubeDict = [Int:Int]()

for num in 1...20 {
    cubeDict[num] = num * num * num
}
//print(cubeDict.count)
//print(cubeDict)

// -------------------------------
// Question 6
// --------------------------------

// Find the most common letter in the string below. Use the dictionary to generate your solution that maps a character to the number of times it appears in the string.

// Ignore whitespaces and capitalization.

let myString = "We're flooding people with information. We need to feed it through a processor. A human must turn information into intelligence or knowledge. We've tended to forget that no computer will ever ask a new question."
var frequencyDict = [Character: Int]()
var mostFrequentChar: Character

for char in myString {
    if !char.isWhitespace && !char.isUppercase {
        if let count = frequencyDict[char] {
            frequencyDict[char] = count + 1
        } else {
            frequencyDict[char] = 1
        }
    }
}
//print(frequencyDict)

let maxElement = frequencyDict.max { $0.value < $1.value}
mostFrequentChar = maxElement?.key ?? " "
print(mostFrequentChar)
