// Shell Sort

import UIKit

func sort(inout list:[String]) {
    let len = list.count
    var h = 1;
    
    while (h < len / 3) {
        h = h * 3 + 1
    }
    while (h >= 1) {
        for var i = h; i < len; i++ {
            for var j = i; j >= h; j -= h {
                if (list[j] < list[j - h]) {
                    let temp = list[j]
                    list[j] = list[j - h]
                    list[j - h] = temp
                } else {
                    break
                }
            }
        }
        h = h / 3
    }
}

var list = ["S", "H", "E", "L", "L", "S", "O", "R", "T", "E", "X", "A", "M", "P", "L", "E"]
println(list)
sort(&list)
println(list)
