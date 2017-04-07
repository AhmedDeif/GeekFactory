//: Playground - noun: a place where people can play

import UIKit


func bubbleSort<T : Comparable>(arr: Array<T>) -> Array<T> {
    var array = arr;
    var swap = 0;
    repeat {
        swap = 0;
        for i in 1..<array.count {
            if(array[i-1] > array[i]) {
                var tmp = array[i-1]
                array[i-1] = array[i]
                array[i] = tmp
                swap = i
            }
        }
        
    }while(swap > 0)
    return array
}

//let array:[Int] = [1,7,9,2,3,4]
let array:[String] = ["A","B","Z","C"]
print(bubbleSort(arr:array))
