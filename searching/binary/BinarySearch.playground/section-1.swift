// Binary Search

import UIKit

func search(list: [String], value: String) -> String {
    var low = 0
    var high = list.count - 1
    
    while (low < high) {
        let middle = low + (high - low) / 2
        if (value < list[middle]) {
            high = middle - 1
        } else if (value > list[middle]) {
            low = middle + 1
        } else {
            return list[middle]
        }
    }
    return ""
}

var list = ["S", "E", "A", "R", "C", "H", "E", "X", "A", "M", "P", "L", "E"]
sort(&list)
println(list)
let search = "A"
if (!search(list, search).isEmpty) {
    println("Found! \(search)")
} else {
    println("Not Found \(search)")
}