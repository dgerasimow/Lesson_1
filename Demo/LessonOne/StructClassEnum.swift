//
//  StructClassEnum.swift
//  LessonOne
//
//  Created by Nikita Sosyuk on 26.06.2022.
//

import Foundation

func structClassEnum() {
    var studentOne = Student(name: "Nikita", type: .budget, averageScore: 91)
    studentOne.averageScore = 100

    let studentTwo = Student(name: "Alex", type: .paid(amount: 160000), averageScore: 75)
}

// MARK: - Enum

enum StudentType {
    case grant
    case budget
    case paid(amount: Int)
}

// MARK: - Struct

struct Student {
    let name: String
    let type: StudentType
    var averageScore: Int
}

// MARK: - Protocol

protocol MakingSounds {
    func makeSound()
}

protocol Pet {
    var name: String? { get }
    var ownerName: String? { get set }
}

// MARK: - Class

class Animal: MakingSounds {
    func makeSound() {
        fatalError("We don't know this.")
    }
}

class Fox: Animal {
    override func makeSound() {
        print("hihihihi")
    }
}

class Dog: Animal {
    override func makeSound() {
        print("bark")
    }
}

class Cat: Animal, Pet {
    var name: String?
    var ownerName: String?

    override func makeSound() {
        print("meow")
    }
}

// MARK: - Extension

extension Dog  {
    func play() { }
}
