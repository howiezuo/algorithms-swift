// Merge Sort

import UIKit

func merge(inout list: [String], low: Int, middle: Int, high: Int) {
    var temp = list
    var i = low
    var j = middle + 1
    
    var k = low
    while (i <= middle && j <= high) {
        if (temp[j] < temp[i]) {
            list[k] = temp[j]
            j++
        } else {
            list[k] = temp[i]
            i++
        }
        k++
    }
    
    while (i <= middle) {
        list[k] = temp[i]
        i++
        k++
    }
    while (j <= high) {
        list[k] = temp[j]
        j++
        k++
    }
}

func sort(inout list: [String], low: Int, high: Int) {
    if (high > low) {
        let mid = low + (high - low) / 2
        
        sort(&list, low, mid)
        sort(&list, mid + 1, high)
        merge(&list, low, mid, high)
    }
}

var list = ["M", "E", "R", "G", "E", "S", "O", "R", "T", "E", "X", "A", "M", "P", "L", "E"]
println(list)
sort(&list, 0, list.count - 1)
println(list)


func sort(inout list: [String]) {
    var len = list.count
    for var i = 1; i < len; i = i + i {
        for var j = 0; j < len - i; j += i + i {
            merge(&list, j, j + i - 1, min(j + i + i - 1, len - 1))
        }
    }
}

var list2 = ["M", "E", "R", "G", "E", "S", "O", "R", "T", "E", "X", "A", "M", "P", "L", "E"]
println(list2)
sort(&list2)
println(list2)
