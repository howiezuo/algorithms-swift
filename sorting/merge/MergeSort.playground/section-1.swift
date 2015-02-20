// Merge Sort

import UIKit

func merge(inout list: [String], low: Int, mid: Int, hig: Int) {
    var temp = list
    var i = low
    var j = mid + 1
    
    for (var k = low; k <= hig; k++) {
        if (i > mid) {
            list[k] = temp[j++]
        } else if (j > hig) {
            list[k] = temp[i++]
        } else if (temp[j] < temp[i]) {
            list[k] = temp[j++]
        } else {
            list[k] = temp[i++]
        }
    }
}

func sort(inout list: [String], low: Int, high: Int) {
    if (high <= low) {
        return
    }
    let mid = low + (high - low) / 2
    
    sort(&list, low, mid)
    sort(&list, mid + 1, high)
    merge(&list, low, mid, high)
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
