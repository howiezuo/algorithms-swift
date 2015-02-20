// Quick Sort

import UIKit

func exchange(inout list: [String], a: Int, b: Int) {
    var temp = list[a]
    list[a] = list[b]
    list[b] = temp
}

func partition(inout list: [String], low: Int, high: Int) -> Int {
    var i = low + 1;
    var j = high;
    let v = list[low]
    
    while (true) {
        for i; i < high; i++ {
            if (list[i] > v) {
                break;
            }
        }
        for j; j > low; j-- {
            if (list[j] < v) {
                break;
            }
        }
        
        if (i < j) {
            exchange(&list, i, j)
        } else {
            break
        }
    }
    
    exchange(&list, low, j)

    return j
}

func sort(inout list: [String], low: Int, high: Int) {
    if ( high <= low) {
        return
    }
    var j = partition(&list, low, high)
    sort(&list, low, j - 1)
    sort(&list, j + 1, high)
}

var list = ["Q", "U", "I", "C", "K", "S", "O", "R", "T", "E", "X", "A", "M", "P", "L", "E"]
//var list = [72, 6, 57, 88, 60, 42, 83, 73, 48, 85]
println(list)
sort(&list, 0, list.count - 1)
println(list)
