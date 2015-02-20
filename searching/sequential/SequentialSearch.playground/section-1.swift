// Sequential Search

import UIKit

func search(list: [String], value: String) -> String {
    for item in list {
        if (item == value) {
            return value
        }
    }
    return ""
}

let list = ["S", "E", "A", "R", "C", "H", "E", "X", "A", "M", "P", "L", "E"]
println(list)
let search = "A"
if (!search(list, search).isEmpty) {
    println("Found! \(search)")
} else {
    println("Not Found \(search)")
}