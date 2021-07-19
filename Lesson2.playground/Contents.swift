import UIKit

/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
 */
var firstVar : Float = 3.14
var secondVar : Float = 17.18
var result = Double(firstVar) + Double(secondVar)
print(result)
/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 2.5 Output to the console the mess age: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 */

var numberOne : Int = 18
var numberTwo : Int = 7
var resultTwo : Int = numberOne/numberTwo
var constReminder : Int = numberOne % numberTwo
print("When dividing \(numberOne) by \(numberTwo), the result is \(resultTwo), the remainder is \(constReminder)")

/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */
var qty = 11
var price = 1000

    if qty < 5 {
        var totalSum = qty * price
    print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
    }
    else if qty >= 5 && qty < 10 {
        price = 900
        var totalSum = qty * price
    print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
}
    else if qty >= 10 {
        price = 850
        var totalSum = qty * price
    print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
    }

/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */
var userInputAge: String = "33"
var newAge = Int(userInputAge)

if newAge != nil {
    print("User is \(newAge) old")
}else {
    print("User age cannot be converted")
}
/*
 Ex5:
 Calculate the number of years, months, days from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
 */
var birthDay = 31
var birthMonth = 10
var birthYear = 1987

var currentDay = 8
var currentMonth = 7
var currentYear = 2021

var totalDaysFromBirth: Int
var totalMonthFromBirth: Int
var totalYearsFromBirth = currentYear - birthYear

if currentDay == birthDay {
    totalDaysFromBirth = 0
    totalMonthFromBirth = 0
    totalYearsFromBirth = currentYear - birthYear
} else if currentDay < birthDay {
    totalDaysFromBirth = currentDay + 30 - birthDay
    totalYearsFromBirth -= 1
} else {
    totalDaysFromBirth = currentDay - birthDay
}

if  currentMonth < birthMonth {
    totalMonthFromBirth = currentMonth
} else if currentMonth == birthMonth && currentDay < birthDay {
    totalMonthFromBirth = 11
    totalYearsFromBirth -= 1
} else {
    totalMonthFromBirth = currentMonth - birthMonth
}

if currentDay == birthDay {
    totalDaysFromBirth = 0
    totalMonthFromBirth = 0
    totalYearsFromBirth = currentYear - birthYear
} else if currentDay < birthDay {
    totalDaysFromBirth = 30 - currentDay
} else {
    totalDaysFromBirth = currentDay - birthDay
}

print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")

/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */
var monthOfBirth: Int = 10

switch monthOfBirth {
case  3...5:
    print("You were born in spring")
case  6...8:
    print("You were born in summer")
case  9...11:
    print("You were born in autumn")
default:
    print("You were born in winter")
}
