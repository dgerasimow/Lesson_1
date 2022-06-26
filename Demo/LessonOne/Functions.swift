//
//  Functions.swift
//  LessonOne
//
//  Created by Nikita Sosyuk on 26.06.2022.
//

import Foundation

func functions() {

    // Объявление функции
    func myFunctionThatDoesNothing() { }

    // Использование функции
    myFunctionThatDoesNothing()

    func printSum(of a: Int, and b: Int) {
        print(a + b)
    }

    func getSum(of a: Int, and b: Int) -> Int {
        let result = a + b
        return result
    }

    func getSum2(of a: Int, and b: Int) -> Int {
        // return для функций писать не обязательно, если в ней выполняется одно действие
        a + b
    }

    func multiply(x: Int, by y: Int) -> Int {
        x * y
    }

    let mySumResult = getSum(of: 3, and: 3)
    let myMultiplicationResult = multiply(x: 3, by: 3)
    print("mySumResult = \(mySumResult); myMultiplicationResult = \(myMultiplicationResult)")


    let sum: (Int, Int) -> Int = { first, second in
        return first + second
    }
    sum(1, 3)

    let printSomethingTwice: (String) -> Void = { value in
        print(value)
        print(value)
    }
    printSomethingTwice("printSomethingTwice")

    func repeatSum(a: Int, b: Int, n: Int, sum: ((Int, Int) -> Int)) -> Int {
        var result = 0
        for _ in 0...n {
            result += sum(a, b)
        }
        return result
    }
}
