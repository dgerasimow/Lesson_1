import UIKit

// Array<Element>

let array4 = [Int]()
let array = [1, 2, 3, 4, 5]
let array2: [Double] = [1, 2, 3, 4, 5]
let array3: Array<Int> = Array(repeating: 10, count: 10)

var names: [String] = ["Nikita", "Alex", "Robert"]
names.append("Masha")
names.insert("Nastya", at: 0)

names.count
names.capacity
let first = names.first
let last = names.last
names[0] = ""
names.remove(at: 0)

// Set<Element>

var set: Set<Int> = []
set.insert(1)
set.insert(2)
set.insert(3)

set.contains(10)

// Dictionary<Key, Value>

var map: [String: Int] = ["apple": 3, "gold": 10, "game": 40]
let result = map["apple"]
map["int"] = 1


// MARK: - functions

func sum(a: Int, b: Int) -> Int {
    return a + b
}

func printUsername(firstName: String, secondName: String) {
    print(firstName + secondName)
}

//func sum(a first: Int, b second: Int) -> Int {
//    return first + second
//}

//func sum(_ a: Int, _ b: Int) -> Int {
//    return a + b
//}

sum(a: 10, b: 20)
printUsername(firstName: "123", secondName: "123")

//let printInt: (Int, Int) -> Void = { first, second in
//    print(first + second)
//}
//
//let sum2: () -> Int = {
//    return 10
//}

// ФП

func minus(a: Int, b: Int) -> Int {
    a - b
}

func multiply(a: Int, b: Int) -> Int {
    a * b
}

func divide(a: Int, b: Int) -> Int {
    a / b
}

func printCalculate(a: Int, b: Int, method: ((Int, Int) -> Int)) {
    let result = method(a, b)
    print(result)
}

printCalculate(a: 10, b: 10, method: sum)
printCalculate(a: 10, b: 10, method: minus)
printCalculate(a: 10, b: 10, method: divide)
printCalculate(a: 10, b: 10, method: multiply)

// MARK: - Class vs Struct | Enum

// ООП

enum StudentType {
    case grant
    case budget
    case paid
}

struct File {

}

struct StudentStruct {
    var name: String = "Default"
    let type: StudentType = .paid
    let averageScore: Double = 90
    let file: File = File()

    func sayHello() {
        print("Hello, my name is \(name)")
    }
}

class StudentClass {
    var name: String = "Default"
    let type: StudentType = .paid
    let averageScore: Double = 90

    func sayHello() {
        print("Hello, my name is \(name)")
    }
}

class ProStudentClass: StudentClass {

    let moneyCount: Int = .max

    override func sayHello() {
        // super.sayHello()
        print("I'm rich")
    }
}

var studentClass = StudentClass()
var studentStruct = StudentStruct()

var copyStudentClass = studentClass
var copyStudentStruct = studentStruct

studentClass.name = "123"
studentStruct.name = "123"

print(copyStudentClass.name)
print(copyStudentStruct.name)


protocol Pet {
    var name: String { get set }
    func makeSound()
}

struct Fox: Pet {
    var name: String = "Fox"
    func makeSound() {
        print("hehehe")
    }
}

class Dog: Pet, Eatable {
    var name: String = "Dog"
    func makeSound() {
        print("bark")
    }
}

class Cat: Pet {
    var name: String = "Cat"
    func makeSound() {
        print("meow")
    }
}

func animalSound(pet: Pet) {
    print("Pet's name is \(pet.name)")
    pet.makeSound()
}

animalSound(pet: Cat())
animalSound(pet: Dog())
animalSound(pet: Fox())

let dog = Dog()
dog.doSomething()

//
//extension Cat: Eatable {
//    fileprivate func eat() {
//        print("I'm eating")
//    }
//}

// open public internal fileprivate private
