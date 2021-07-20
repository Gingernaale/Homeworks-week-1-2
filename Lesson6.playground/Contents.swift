import UIKit
/*
 Exercise 1
 Create enum CalculationType as String, where will be: addition, subtraction, multiplication, division with String value
 */

enum CalculationType: String {
    case addition = "addition"
    case subtraction = "subtraction"
    case multiplication = "multiplication"
    case division = "division"
}

/*
 Exercise 1.1
 Create a func calculateResult with argument firstNumber, parametrs numberOne, data type Int, + argument andSecondNumber, parametrs numberTwo, data type Int ,+ argument withCalculationType, parametrs calculationType, data type CalculationType and everything will return Int.
 Than use switch case to calculate and return Int result
 var result = numberOne
 switch calculationType {
 case .addition: result += numberTwo
 .....
 }
 print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
 return result
 */
func calculateResult(firstNumber numberOne: Int, andSecondNumber numberTwo: Int, withCalculationType calculationType: CalculationType
    ) -> Int {
    var result = numberOne
    switch calculationType {
    case .addition:
        result += numberTwo
    case .subtraction: result -= numberTwo
    case .multiplication: result *= numberTwo
//    case .division: numberTwo != 0 ? result /= numberTwo : print("No divide to 0")
    case .division:
        guard numberTwo > 0 else {
            print ("It is not allowed to devide by 0.")
            return result
        }
        result /= numberTwo
    }
    if result != 0{
        print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
    }
    return result
}

/*
 Exercise 1.2
 Declare two numbers.
 Call func 4 times for all calculateResult
 */
let numberOne = 4
let numberTwo = 2


calculateResult(firstNumber: numberOne, andSecondNumber: numberTwo, withCalculationType: .addition)
calculateResult(firstNumber: numberOne, andSecondNumber: numberTwo, withCalculationType: .division)
calculateResult(firstNumber: numberOne, andSecondNumber: numberTwo, withCalculationType: .multiplication)
calculateResult(firstNumber: numberOne, andSecondNumber: numberTwo, withCalculationType: .subtraction)

struct Car {
    var name: String
    var productionYear: Int
    var horsPower: Int
    func getSpecs(){
        print("\(name)", "\(productionYear)", "\(horsPower)" )
    }
}
let audiQ7 = Car(name: "audiQ7", productionYear: 2020, horsPower: 1500)
var audiTT = audiQ7
audiTT.name = "audiTT"
audiQ7.getSpecs()
audiTT.getSpecs()
