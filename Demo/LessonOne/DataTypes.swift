//
//  Data.swift
//  LessonOne
//
//  Created by Nikita Sosyuk on 26.06.2022.
//

import Foundation

func dataTypes() {

    // Array<Element>
    var myIntArray = [ 1, 2, 3, 4, 5 ]
    var myIntArray1: [Int] = [ 1, 2, 3 ]
    var myIntArray2: Array<Int> = [ 1, 2, 3, 4]
    var myIntArray3 = Array<Int>()
    var myIntArray4 = [Int]()

    let firstItem = myIntArray[0]
    firstItem
    let safeFirstItem = myIntArray.first
    safeFirstItem
    myIntArray3.first
    myIntArray2[1] = 6
    myIntArray2

    // Dictionary<Key, Value>
    var gasolinePrices: [String: Int] = [ "92": 43, "95": 45, "100": 55 ]
    gasolinePrices
    let priceOf92 = gasolinePrices["92"]
    gasolinePrices["98"] = 48
    gasolinePrices["100"] = nil
    gasolinePrices

    // Set<Element>
    var intSet: Set<Int> = []
    intSet.insert(1)
    intSet.contains(1)

}
