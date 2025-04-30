import UIKit
import SwiftUI
var greeting = "Hello, playground"


var arr  = [1,2,3,4,2,3,1,4,2], k = 3
// iterate n- 1
func findbubbleSort(aar: inout [Int]) -> [Int] {
    let count = aar.count
    for i in 0..<count {
        for j in 0..<aar.count - i - 1 {
            if aar[j] > aar[j + 1] {
                aar.swapAt(j, j + 1)
            }
        }
    }
    return aar
}
// time complexity is O(n)
print("findbuublesort",findbubbleSort(aar: &arr))
// selection sort
func selectionSort(arr: inout [Int]) -> [Int]
{
    for i in 0 ..< arr.count {
        var smallIndex = i
        for j in i + 1 ..< arr.count {
            if arr[j] < arr[i] {
                arr.swapAt(j, i)
            }
                
        }
    }
    return arr
}
print("selectionSort",selectionSort(arr: &arr))
//insertion sort
//Two Sum
///Given an array A and an integer target, find the indices of the two numbers in the array whose sum is equal to the given target.

//Note: The problem has exactly one solution. Do not use the same element twice.
func twoSum(arr:[Int],target: Int) -> [Int] {
    var result = [Int: Int]()
    for i in 0...arr.count {
        let reaminingvalue = target - arr[i]
        let val = arr[i]
        if let resIndex = result[reaminingvalue] {
            return [resIndex,i]
        }
        result[val] = i
    }
    return [0,0]
}
//print("twosumfind",twoSum(arr: [2, 4, 2, 3, 2], target: 7))
// func contigous Sum
func contigousSum(arr:[Int]) -> Int{
    var maxSum = 0
    for start in 0...arr.count - 1 {
        var currentSum = 0
        for end in start..<arr.count {
           // print("end",end)
            currentSum += arr[end]
            maxSum = max(currentSum, maxSum)
           
        }
    }
    return maxSum
}
//print("contigousSum",contigousSum(arr: [3,-4,5,4,-1,7,-8]))
func contigousSumkadansAlgo(arr:[Int]) -> Int{
    var curntSum = 0
    var maxSum = Int.min
    for i in 0..<arr.count {
        curntSum += arr[i]
        maxSum = max(curntSum, maxSum)
        if curntSum < 0 {
            curntSum = 0
        }
    }
    return maxSum
}
//print("contigousSum",contigousSumkadansAlgo(arr: [6, -4 ,2, 5]))
func printStar(){
    for i in 0..<4 {
        for j in 0..<4 {
            print("*",terminator: "")
        }
    print()
    }
}
func printStarPATTERN1(){
    for i in 0..<6 {
        for j in 0..<i {
            print("*",terminator: "")
        }
    print()
    }
}
func printStarPATTERN2(){
    for i in 1...5 {
        for j in 1...i {
          print("\(j)",terminator: "")
        }
    print()
    }
}
func printStarPATTERN3(){
    for i in 1...5 {
        for j in 1...i {
          print("\(i)",terminator: "")
        }
    print()
    }
}
func printStarPATTERN5(){
   let  n = 5
    for i in 1...n {
        for j in 1...n - i + 1 {
          print("*",terminator: "")
        }
    print()
    }
}
func printStarPATTERN6(){
   let  n = 5
    for i in 0..<n {
        // space
        for j in 0..<n - i - 1 {
         
          print(" ",terminator: "")
        }
        // star print
        for j in 0..<(2 * i) + 1 {
        
          print("*",terminator: "")
        }
        
        for l in 0..<n - i - 1 {
          print(" ",terminator: "")
        }
       
       print()
    }
}
func printStarPATTERN7(){
   let  n = 5
    for i in 0..<n {
        // space
        for j in 0..<i {
         
          print(" ",terminator: "")
        }
        // star print
        for j in 0..<2*n - ((2 * i) + 1) {
        
          print("*",terminator: "")
        }
        
        for l in 0..<i{
          print(" ",terminator: "")
        }
       
       print()
    }
}
func prinpattern8(){
    let n = 5
    for i in 1..<2*n - 1 {
        var start = i
        if i > n {
           
            start = 2*n - i
        }
        for j in 1..<start {
            print("*",terminator: "")
        }
        print()
    }
   
}
func prinpattern9(){
    var start = 1
    let n = 5
    for i in 0...n {
        
        if i%2 == 0  {
            start = 0
        } else {
            start  = 1
        }
        for j in 0..<i {
            print(start,terminator: "")
            start =  1 - start
        }
        print()
    }
    
}
func prinpattern10(){
    var start = 1
    let n = 4
   var space =  2 * (n - 1)
    for i in 1...n {
        
      //
        for j in 1...i{
            print(j,terminator: "")
            
        }
        if space > 0 {
            for k in 1...space{
                print("_" , terminator: "")
                // space = space - 2
            }
        }
        for j in stride(from: i, through: 1, by: -1) {
            print(j,terminator: "")
        }
        print()
        space -= 2
    }
    
}
prinpattern10()
