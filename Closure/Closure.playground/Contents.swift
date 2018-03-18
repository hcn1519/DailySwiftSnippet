
//: Playground - noun: a place where people can play

import UIKit

// FlatMap Example 1

let numbers: [Int?] = [1,2,3,4,5,6, nil, nil, nil, nil, nil, 9, 10, 11 , 12]

let flatMapResult = numbers.flatMap {
    return $0
}

// nil results are removed
// output: [1, 2, 3, 4, 5, 6, 9, 10, 11, 12]
print(flatMapResult)

// FlatMap Example 2
// Code from https://medium.com/@wilson.balderrama/flatmap-method-in-action-swift-3-853a66f970bd

var arrayOfArrays = [ [1, 1], [2, 2], [3, 3] ]
var flattenedArray = arrayOfArrays.flatMap { array in
    return array.map { integer in
        return integer * 2
    }
}

// outputs: [2, 2, 4, 4, 6, 6]
print(flattenedArray)
