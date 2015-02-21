// Insertion Sort

import UIKit

func exchange(inout list:[String], i: Int, j: Int) {
    var temp = list[i]
    list[i] = list[j]
    list[j] = temp
}

func sort(inout list:[String]) {
    let len = list.count
    
    for var i = 0; i < len; i++ {
        for var j = i; j > 0; j-- {
            if (list[j] < list[j - 1]) {
                exchange(&list, j, j - 1)
                println(list)
            } else {
                break
            }
        }
    }
}

var list = ["S", "O", "R", "T", "E", "X", "A", "M", "P", "L", "E"]
println(list)
sort(&list)
println(list)
