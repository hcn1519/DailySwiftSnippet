//: Playground - noun: a place where people can play

import UIKit

// Helpful Post
// https://appventure.me/2015/10/17/advanced-practical-enum-examples/

// associate type enum

enum 장르 {
    case 로맨스(tintColor: UIColor, tagName: String)
    case 무협(tintColor: UIColor, tagName: String)
}

func setGenre(genre: 장르) {
    print("set")
    switch genre {
    case .로맨스(let tintColor, let tagName):
        print("Genre: \(tintColor), Tag: \(tagName)")
    default:
        break
    }
}

let myGenre: 장르 = .로맨스(tintColor: .yellow, tagName: "Romance")

setGenre(genre: myGenre)
