import UIKit

/* Lesson 4
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */
var myTeam = "Girls"
let resultsOfGames = [
    "Brooklyn Nets": ["99", "98"],
    "Dallas Mavericks": ["100", "76"],
    "Washington Wizards": ["117","112"]
]
for (teamName, scores) in resultsOfGames{
    print("\(myTeam) against \(teamName) scored - \(scores)")
}
/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */
var wallet = [5, 10, 20, 50, 100, 200, 500]
func calculateCash( myWallet: [Int])-> Int{
    var sum = 0
    for banknote in wallet{
        sum = sum + banknote
    }
    return sum
}
print(calculateCash( myWallet: wallet))
/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */
func isEvenNumber(number:Int)-> Bool{
    var status = true
    if number % 2 == 0{
        status = true
    }else{
        status = false
    }
    return status
}
print(isEvenNumber(number: 2))

/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */

var array: [Int] = []
func createArray(from a:Int, to b:Int) -> [Int]{
    var aVal = a
    repeat {
        array.append(aVal)
        aVal += 1
    } while b >= aVal
    return array
}
print(createArray(from:1 , to: 100))

/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */

for el in array{
    if isEvenNumber( number:el ) == true{
        array.remove(at: array.firstIndex( of: el )!)
    }
}
print(array)
