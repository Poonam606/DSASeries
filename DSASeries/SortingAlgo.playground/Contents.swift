import UIKit

var greeting = "Hello, playground"
// bubbleSort
//Repeatedly compare and swap adjacent elements if they’re in the wrong orde
func bubbleSort(arr: inout [Int]) {
    for i in 0..<arr.count {
        var isSwap = 0
        for j in 0..<arr.count - i - 1 {
            print("j",arr[j],arr[j + 1])
            if arr[j] > arr[j + 1] {
                arr.swapAt(j, j + 1)
                isSwap += 1
            }
        }
        if isSwap == 0 {
            break
        }
    }
            
}
var arr  = [1,10,2,5,4,6,8,]
bubbleSort(arr: &arr)
print("arr",arr)
// selection sort
//Repeatedly find the minimum element and put it at the beginning.
func selectSort(arr: inout [Int]) {
    for i in 0..<arr.count - 1{
        var mini = i
        for j in i+1..<arr.count  {
            if arr [j] < arr[mini]
            {
               mini = j
            }
        }
        arr.swapAt(i, mini)
    }
}
var arr1  = [1,10,2,5,4,6,8,]
selectSort(arr: &arr1)
print("arrsselec",arr1)
//timecomplexity - o(n2)
//how to optimize bubble sort
// insertion Sort
func insertionSort(arr: inout [Int]) {
    for i in 0..<arr.count - 1 {
        var j = i
        while (j > 0 && arr[j - 1] > arr[j]) {
            arr.swapAt(j - 1, j)
        }
    }
        
}
insertionSort(arr: &arr1)
print("insertionSort",arr1)
// worst case is O(n2)
//best case O(n)
    //merge sort
func mergeSort(arr: [Int]) -> <#Return Type#>{
    guard   arr.count > 1 else {
        return arr
    }
    let mid = arr.count/2
    let left = mergeSort(Array(arr[0..<mid]), <#[Int]#>)
}
func mergeSort(_ left:[Int],_ right:[Int])->[Int] {
    
}
