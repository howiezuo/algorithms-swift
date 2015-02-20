// Selection Sort

import UIKit

func sort(inout list:[String]) {
    let len = list.count
    
    for var i = 0; i < len; i++ {
        var min = i
        for var j = i + 1; j < len; j++ {
            if (list[j] < list[min]) {
                min = j
            }
        }
        var temp = list[i]
        list[i] = list[min]
        list[min] = temp
        println(list)
    }
}

var list = ["S", "O", "R", "T", "E", "X", "A", "M", "P", "L", "E"]
println(list)
sort(&list)
println(list)
