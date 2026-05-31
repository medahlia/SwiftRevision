import Foundation
/*
class Plant {
    var name: String
    var latinName: String
    var type: String
    var description: String {
        return "This is a \(name) (\(latinName)) - \(type)"
    }
    
    init(name: String, latinName: String, type: String) {
        self.name = name
        self.latinName = latinName
        self.type = type
    }
}

class Succulent: Plant {
    var age: Int
    
    init(name: String, latinName: String, age: Int) {
        self.age = age
        super.init(name: name, latinName: latinName, type: "Succulent")
    }
    
    override var description: String {
        return "This is a \(name) (\(latinName)) - \(type),  \(age) years"
    }
}

let plant1 = Succulent(name: "Elephant's foot", latinName: "Beaucarnea recurvata", age: 5)
print(plant1.description)
//let plant2 = Succulent(name: "Calico hearts", latinName: "Adromuschus maculatus")
//let plant3 = Succulent(name: "Queen victoria", latinName: "Agave victoria regina")

let anotherPlant1 = plant1
anotherPlant1.name = "another one"
print(plant1.name)
print(anotherPlant1.name)


actor Human {
    var maximumAge = 107
    
    func printAge() {
        print("Max age is currently \(maximumAge)")
    }
    
    func updateMaximumAge(from other: Human) async {
        maximumAge = await other.maximumAge
    }
}
*/


/*
protocol HasLaserGun {
    func fireLaserGun()
}

protocol Bipedal {
    func walk()
}

protocol HasArms {
    var armCount: Int { get }
    func gripWith(arm: Int)
}

protocol HasAntenna {
    var antennaCount: Int { get }
}

protocol HasWheels {
    var wheelCount: Int { get }
}

protocol PetrolPowered {
    var petrolPercent: Int { get set }
}

struct RobotOne: Bipedal, HasAntenna {
    var antennaCount: Int
    
    func walk() {
        print("Robot is now walking, using its legs")
    }
}
var myFirstRobot = RobotOne(antennaCount: 2)
//myFirstRobot.walk()

struct RobotTwo: HasArms, HasAntenna, PetrolPowered {
    var armCount: Int
    var antennaCount: Int
    var petrolPercent: Int
    
    func gripWith(arm: Int) {
        print("Now gripping with arm number \(arm)")
    }
}
var mySecondRobot = RobotTwo(armCount: 2, antennaCount: 2, petrolPercent: 100)
//mySecondRobot.gripWith(arm: 1)

struct RobotThree: HasWheels, HasArms, HasAntenna {
    var wheelCount: Int
    var armCount: Int
    var antennaCount: Int
    
    func gripWith(arm: Int) {
        print("A RobotThree type robot is now gripping with arm number \(arm)")
    }
}
var myThirdRobot = RobotThree(wheelCount: 1, armCount: 2, antennaCount: 2)
//myThirdRobot.gripWith(arm: 2)

struct RobotFour: HasLaserGun, HasWheels {
    var wheelCount: Int
    
    func fireLaserGun() {
        print("RobotFour type robot is firing laser!")
    }
}
var myFourthRobot = RobotFour(wheelCount: 2)
//myFourthRobot.fireLaserGun()

struct RobotFive: HasArms, HasWheels {
    var armCount: Int
    var wheelCount: Int
    func gripWith(arm: Int) {
        print("Now gripping with arm number \(arm)")
    }
}
var myFifthRobot = RobotFive(armCount: 2, wheelCount: 3)
myFifthRobot.gripWith(arm: 2)
*/

/*
protocol Aircraft {
    func takeOff()
    func land()
}

protocol Watercraft {
    var buoyancy: Int { get }
}

protocol PetrolPowered {
    var petrolPercent: Int { get set }
    func refuel() -> Bool
}

protocol Landcraft {
    func drive()
    func brake() -> Bool
}

struct Vehicle: Aircraft, Watercraft, PetrolPowered, Landcraft {
    var buoyancy: Int = 0
    var petrolPercent: Int = 0
    
    func takeOff() {
        print("Aircraft func takeOff")
    }
    func land() {
        print("Aircraft func land")
    }
    func refuel() -> Bool {
        print("PetrolPowered func refuel")
        return true
    }
    func drive() {
        print("Landcraft func drive")
    }
    func brake() -> Bool {
        print("Landcraft func brake")
        return false
    }
}
*/

/*
 protocol Increaser {
 var value: Int { get set }
 mutating func increase()
 }
 
 struct MyNumber: Increaser {
 var value: Int
 
 mutating func increase() {
 value = value + 1
 }
 }
 var num = MyNumber(value: 1)
 num.increase()
 */

/*
protocol Animal {
    var type: String { get }
}

struct Dog: Animal {
    var name: String
    var type: String
    
    func bark() {
        print("Woof!")
    }
}

struct Cat: Animal {
    var name: String
    var type: String
    
    func meow() {
        print("Meow!")
    }
}

struct Bird: Animal {
    var name: String
    var type: String
    
    func chirp() {
        print("Tweet!")
    }
}

var bunty = Cat(name: "Bunty", type: "British Shorthair")
var nigel = Cat(name: "Nigel", type: "Russian Blue")
var percy = Cat(name: "Percy", type: "Manx")
var argos = Dog(name: "Argos", type: "Whippet")
var apollo = Dog(name: "Apollo", type: "Lowchen")

var animals: [Animal] = [bunty, nigel, percy, argos, apollo]

var tweety = Bird(name: "Tweety", type: "Canary")
animals.append(tweety)

for animal in animals {
    if let cat = animal as? Cat {
        cat.meow()
    } else if let dog = animal as? Dog {
        dog.bark()
    } else if let bird = animal as? Bird {
        bird.chirp()
    }
}
*/

/*
struct Size {
    var w = 0
    var h = 0
}
struct Point {
    var x = 0
    var y = 0
}
struct Rectangle {
    var origin = Point()
    var size = Size()
}
var smallSquare = Rectangle(origin: Point(x: 15, y: 5), size: Size(w: 2, h: 2))

extension Rectangle {
    init(center: Point, size: Size) {
        let origin_x = center.x - (size.w / 2)
        let origin_y = center.y - (size.h / 2)
        self.init(origin: Point(x: origin_x, y: origin_y), size: size)
    }
}

var bigSquare = Rectangle(center: Point(x: 10, y: 10), size: Size(w: 10, h: 10))
*/

/*
extension Int {
    var square: Int {
        return self * self
    }
    
    func cube() -> Int {
        return self * self * self
    }
    
    mutating func incrementBy10() {
        self = self + 10
    }
    
    var description: String {
        return "This Int contains the value \(self)"
    }
}

var myInt: Int = 100
print(myInt.square)
print(myInt.cube())
myInt.incrementBy10()
print(myInt.description)
*/

/*
struct MySequence: Sequence, IteratorProtocol {
    var cur = 1
    mutating func next() -> Int? {
        defer {
            cur = cur * 5
        }
        return cur
    }
}

var myNum = 0
let numbers = MySequence()
for number in numbers {
    myNum = myNum + 1
    if myNum == 10 {
        break
    }
    print(number)
}
*/

/*
struct Person {
    var name: String
    var coffeesConsumed: Int?
}

var alex = Person(name: "Alex", coffeesConsumed: 5)
var tom = Person(name: "Tom")

if let coffees = tom.coffeesConsumed {
    print("The unwrapped value is: \(coffees)")
} else {
    print("Nothing in there.")
}
*/

/*
func order(pizza: String?, quantity: Int) {
    guard let unwrappedPizza = pizza else {
        print("No specific pizza ordered")
        return
    }
    var message = "\(quantity) \(unwrappedPizza) pizzas were ordered."
    print(message)
}
*/

/*
var bobsConcerts = ["Queen at Live Aid", "Roger Waters - The Wall"]
var tomsConcerts = [String]()

let bobsFirstConcert = bobsConcerts.first?.uppercased()
let tomsFirstComcert = tomsConcerts.first?.uppercased()
*/

/*
struct Song {
    var name: String
}

struct Person {
    var name: String
    var favoriteSong: Song
    var favoriteKaraokeSong: Song?
}

let paris = Person(name: "Paris",
                   favoriteSong: Song(name: "Learning to Fly - Pink Floyd"),
                   favoriteKaraokeSong: Song(name: "Africa - Toto"))
let bob = Person(name: "Bob",
                 favoriteSong: Song(name: "Shake It Off - Taylor Swift"))
let susan = Person(name: "Susan",
                   favoriteSong: Song(name: "Zombie - The Cranberries"))

var people: [Person] = [paris, bob, susan]
for person in people {
    if let unwrappedKaraoke = person.favoriteKaraokeSong {
        print(unwrappedKaraoke.name)
    } else {
        print("there is nothing")
    }
}
*/


/*
class Bird {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Singer: Bird {
    func sing() {
        print("\(self.name) is singing! Singing so much!")
    }
}

class Nester: Bird {
    func makeNest() {
        print("\(self.name) made a nest")
    }
}

let birds = [Bird(name: "Cyril"), Singer(name: "Lucy"), Singer(name: "Maurice"), Nester(name: "Cuthbert")]

for bird in birds {
    if let singer = bird as? Singer {
        singer.sing()
    }
}
*/

//var dogBreed: String?
//print("Look at that cute \(dogBreed ?? "doggo")!")

/*
struct Queue<T> {
    private var arrayRepresentation = [T]()
    
    var count: Int {
        return arrayRepresentation.count
    }
    
    mutating func push(_ item: T) {
        arrayRepresentation.append(item)
    }
    
    mutating func pop() -> T? {
        if arrayRepresentation.count > 0 {
            return arrayRepresentation.removeFirst()
        } else {
            return nil
        }
    }
}

var stringQueue = Queue<String>()
stringQueue.push("Hello")
stringQueue.push("Goodbye")
print(stringQueue.pop()!)
*/

/*
func switchValues<T>(_ one: inout T, _ two: inout T) {
    let temp = one
    one = two
    two = temp
}
var a = 5
var b = 11
switchValues(&a, &b)
print(a)
print(b)
*/


