import UIKit

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
