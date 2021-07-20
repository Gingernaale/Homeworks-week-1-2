import UIKit

//The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
//print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")

let startDeposit: Float = 500000
var deposit: Float = startDeposit
let rate: Float = 0.05
let period = 5
for _ in 1...period{
    deposit += (deposit * rate)
}
var profit: Float = deposit - startDeposit
print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")

/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */

var numArr = [6, 9, 17, 16, 3, 2, 6, 1]
print( "My even numbers are:")
for el in numArr{
    if el % 2 == 0 {
        print(el)
    }
}
/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */

var counter = 0
for _ in 1...100{
    let randomNumber = Int.random(in: 1...100)
    if randomNumber == 5 {
        print ("Number 5 will be after \(counter) shuffles")
        break
    }else {
        counter += 1
    }
}

/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night bug slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */

let day = 2
let night = 1
var height = 0
var numberOfDays = 0
while height < 10 {
    numberOfDays += 1
    height += day
    if height != 10 {
        height -= night
    } else {
        break
    }
}

print("Bug will spend \(numberOfDays) days to reach top of the post")
