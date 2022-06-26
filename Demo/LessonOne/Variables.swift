//
//  Variables.swift
//  LessonOne
//
//  Created by Nikita Sosyuk on 26.06.2022.
//

import Foundation

/// Объявление переменных
/// Примитивные типы данных
public func variables() {

    var variableInt1 = 1
    var _: Int = 42
    var _: Int = Int(42)

    let constantInt2 = 2
    let constantInt3: Int = 3

    print("one = \(variableInt1); two = \(constantInt2); three = \(constantInt3)")

    variableInt1 = 2
    variableInt1 += 2
    // constantInt3 = 5 Error: Cannot assign to value: 'constantInt' is a 'let' constant

    print("one = \(variableInt1)")

    let randomConstInt: Int
    if Bool.random() {
        randomConstInt = 2
    } else {
        randomConstInt = 4
    }

    print(randomConstInt)

    let myInt: Int = 42
    let myFloat: Float = 42
    let myDouble: Double = 42
    let myTrueBoolean: Bool = true
    let myFalseBoolean: Bool = false
    let myString: String = "Hello, world!"
}
