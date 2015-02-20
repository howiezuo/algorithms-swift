// Quick Sort with 3 way partitioning

import UIKit

func exchange(inout list: [String], a: Int, b: Int) {
    var temp = list[a]
    list[a] = list[b]
    list[b] = temp
}

func sort(inout list: [String], low: Int, high: Int) {
    if (low >= high) {
        return
    }
    
    var lt = low, gt = high
    let v = list[low]
    
    for var i = low + 1; i <= gt; {
        if (list[i] < v) {
            exchange(&list, lt, i)
            lt++
            i++
        } else if (list[i] > v) {
            exchange(&list, i, gt)
            gt--
        } else {
            i++
        }
    }
    
    sort(&list, low, lt - 1)
    sort(&list, gt + 1, high)
}

var list = ["R", "B", "W", "W", "R", "W", "B", "R", "R", "W", "B", "R"]
//var list = [72, 6, 57, 88, 60, 42, 83, 73, 48, 85]
println(list)
sort(&list, 0, list.count - 1)
println(list)
