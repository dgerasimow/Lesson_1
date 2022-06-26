//
//  Cycles.swift
//  LessonOne
//
//  Created by Nikita Sosyuk on 26.06.2022.
//

import Foundation

func cycles() {

    if Bool.random() {

    } else if Bool.random() {

    } else {

    }

    guard Bool.random() else { return }

    let int = 10

    switch int {
    case 1: break
    case 10:
        print(int)
    default: break
    }

    let range = 0...5
    let rangeTwo = 0..<10

    for i in 0...5 {
        print(i)
    }

    for _ in range {
        print("Cycle")
    }

    for i in rangeTwo {
        print("Cycle \(i)")
    }

    let array = [1, 2, 3, 4, 5]

    for element in array {
        print(element)
    }

    for element in array {
        if element % 2 == 0 {
            print(element)
        }
    }
}
