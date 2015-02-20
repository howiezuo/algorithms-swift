// Insertion Sort

import UIKit

func sort(inout list:[String]) {
    let len = list.count
    
    for var i = 0; i < len; i++ {
        for var j = i; j > 0; j-- {
            if (list[j] < list[j - 1]) {
                let temp = list[j]
                list[j] = list[j - 1]
                list[j - 1] = temp
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
