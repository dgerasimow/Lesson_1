//
//  Optionals.swift
//  LessonOne
//
//  Created by Nikita Sosyuk on 26.06.2022.
//

import Foundation

/// Безопасная обработка отсутствий значения
/// nil - Пустота
func optionals() {

    let usualInt = 5
    let optionalEmptyInt: Int? = nil
    let optionalValueInt: Int? = 5

    print("usualInt = \(usualInt); optionalEmptyInt = \(optionalEmptyInt); optionalValueInt = \(optionalValueInt)")

    var wrappedValue: String? = nil

    // ForceUnwrap
    // print("firstForceUnwrap = \(wrappedValue!)")

    // Default value
    print("firstOrElse = \(wrappedValue ?? "Custom")")

    // Optional Chaining
    print("first = \(wrappedValue?.first)")

    wrappedValue = "ITIS"

    if wrappedValue != nil {
        print(wrappedValue!)
    }

    if let unwrappedValue = wrappedValue {
        print(unwrappedValue)
    }

    guard let unwrappedValue = wrappedValue else {
        print("Find nil")
        return
    }

    print(unwrappedValue)
}
