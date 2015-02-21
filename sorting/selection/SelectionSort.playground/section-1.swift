// Selection Sort

import UIKit

func exchange(inout list:[String], i: Int, j: Int) {
    var temp = list[i]
    list[i] = list[j]
    list[j] = temp
}

func sort(inout list:[String]) {
    let len = list.count
    
    for var i = 0; i < len; i++ {
        var min = i
        for var j = i + 1; j < len; j++ {
            if (list[j] < list[min]) {
                min = j
            }
        }
        exchange(&list, i, min)
        println(list)
    }
}

var list = ["S", "O", "R", "T", "E", "X", "A", "M", "P", "L", "E"]
println(list)
sort(&list)
println(list)
