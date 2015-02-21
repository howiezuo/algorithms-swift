// Bubble Sort

import UIKit

func exchange(inout list:[String], i: Int, j: Int) {
    var temp = list[i]
    list[i] = list[j]
    list[j] = temp
}

func sort(inout list: [String]) {
    for var i = 0; i < list.count; i++ {
        for var j = 1; j < list.count - i; j++ {
            if (list[j - 1] > list[j]) {
                exchange(&list, j, j - 1)
                println(list)
            }
        }
    }
}

var list = ["B", "U", "B", "B", "L", "E", "S", "O", "R", "T", "E", "X", "A", "M", "P", "L", "E"]
println(list)
sort(&list)
println(list)
