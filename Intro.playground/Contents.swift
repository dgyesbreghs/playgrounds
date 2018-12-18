///
/// Swift Short
///

///
/// Struct
/// Pass by Value
/// Met andere worden, als je een object gaat 'kopieren', ga je de values kopieren
/// Kan je duidelijk hieronder zien. Vanaf we de gebruikersnaam van object twee aanpassen wordt de gebruikers van object één niet aangepast.
///

import UIKit

struct User {
    var username: String
    var password: String
}

let userOne = User(username: "dgyesbreghs@gmail.com", password: "icapps")
var userTwo = userOne

print(userOne.username)
print(userTwo.username)

userTwo.username = "dylan.gyesbreghs@icapps.com"

print(userOne.username)
print(userTwo.username)

///
/// Class
/// Pass by Reference
/// Met andere worden, als je een object gaat 'kopieren', ga je de referentie/adres kopieren
/// Kan je duidelijk hieronder zien. Vanaf we de nummerplaat van object twee aanpassen wordt nummerplaat één ook aangepast.
///

class Car {
    var type: String = "VW Golf"
    var licensePlate: String = "1-PTZ-810"
}

let careOne = Car()
var careTwo = careOne

print(careOne.licensePlate)
print(careTwo.licensePlate)

careTwo.licensePlate = "1-SVA-210"

print(careOne.licensePlate)
print(careTwo.licensePlate)

///
/// Inheritance
/// Small demo about inheritance
///

class Moto: Car {
    var gears: Int = 5
}

let moto = Moto()

print("Gears: \(moto.gears)")

// Not possible -> inheritance from non-protocol type 'User'
struct Person: User {

}

/////
///// Weak vs Unowned
/////
//
//class Bounds {
//    let width: CGFloat = 120
//    let height: CGFloat = 120
//
//    func start() {
//        print("View Start called")
//
//        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [unowned self] in
//            print("Width: \(self.width)")
//            print("Height: \(self.height)")
//        }
//
//        print("View Start ended")
//    }
//}
//
//class View {
//
//    var bounds: Bounds? = Bounds()
//
//    func start() {
//        bounds?.start()
//    }
//
//}
//
//var view: View? = View()
//view?.start()
//view = nil
