
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

// 3 Example of get minimum value in array

let list = [1,2,3,4,5,6, -2, 1, 9, 10, 11 , 12]

var minimum = list[0]
for item in list {
    if item < minimum {
        minimum = item
    }
}
print(minimum)

let minimumFromReduce = list.reduce(list[0]) { (acc, cur) in
    return acc > cur ? cur : acc
}
print(minimumFromReduce)

let minimum3: Int = {
    return list.min() ?? 0
}()

print(minimum3)


// 4. Example of zip

let query = ["전부", "썰", "로맨스", "미스테리", "팬픽"]
let titles = ["전체", "일상/썰", "로맨스/판타지", "공포/스릴러/미스테리", "BL/GL/팬픽"]
let array3 = [23154, 435, 23523, 23423, 5646]

for (queryItem, (title, number)) in zip(query, zip(titles, array3)) {
    print("Query: \(queryItem), TItle: \(title), Number: \(number)")
}
