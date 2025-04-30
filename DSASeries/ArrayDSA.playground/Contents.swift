import UIKit

var greeting = "Hello, playground"
//1.  find largestElemnt in array
func findLargestElement(_ arr: [Int]) -> Int?{
    if arr.isEmpty {
        return nil
    }
    
    return arr.sorted().last
    
}

print("arr", findLargestElement([1,5,8,9,3,6]))
//just finding the largest element, sorting is overkill. A linear scan (O(n) time and O(1) space) is the optimal way:
func findLargestElemenoptimalSolutiont(_ arr: [Int]) -> Int?{
    if arr.isEmpty {
        return nil
    }
    var largestElemt = arr[0]
    for val in arr {
        if val > largestElemt {
            largestElemt = val
        }
    }
    return largestElemt
}
// second largestNumber
func findSecondLargestElement(_ arr:[Int])-> Int?{
    if arr.isEmpty{
        return nil
    }
   
    let arryWithNoDuplicacy = Array( Set(arr))
    let sortedArray = arryWithNoDuplicacy.sorted()
    print("duplicacy",sortedArray)
    if sortedArray.count < 2 {
        return nil
    }
    
    let index = arr.count - 2
    return sortedArray[index]
    
}
print("secondLargetbruteForce", findSecondLargestElement([1,5,8,9,3,6]))
func findSecondlargestSolution(_ arr: [Int]) -> Int?{
    var largest = arr[0]
    var secondlargest = Int.min
    for val in arr {
        if val > largest {
            secondlargest = largest
            largest = val
        }
        else if val > secondlargest && val != largest
        {
           secondlargest = val
        }
    }
    
    return secondlargest
}
print("secondlargestOptimalSolution", findSecondlargestSolution([1,5,9,3,6]))
func checkifArrayIsSorted(_ arr: [Int]) -> Bool {
    for i in 1..<arr.count {
        print("i",i)
        if arr[i] >= arr[i - 1] {
         
        } else {
            return false
        }
    }
    return true
}
print("sorted",checkifArrayIsSorted([1,2,3,4,5]))
print("sorted",checkifArrayIsSorted([1,2,1,3,4]))
func findRemoveDuplicateElementFromArr(_ arr: [Int]) -> [Int] {
    var newArr = [Int]()
    for val in arr {
        if newArr.contains(val) {
            
        } else {
            newArr.append(val)
        }
    }
    return newArr
}
print("duplicateRemove", findRemoveDuplicateElementFromArr([5,5,7,8,8,9,9,10]))
func findRemoveDuplicateElementFromArrOptimal(_  arr: inout [Int]) -> [Int] {
    var x = 0
    for i in 0..<arr.count {
        if arr[x] != arr[i] {
            x += 1
            arr[x] = arr[i]
        }
    }
    var result = [Int]()
    for j in 0...x {
        result.append(arr[j])
    }
    return result
}
var arr = [5,5,7,8,8,9,9,10]
print("duplicateRemove", findRemoveDuplicateElementFromArrOptimal(&arr))
func leftRotateArrayByD(_ arr: inout [Int], d : Int) -> [Int] {
    var temp = [Int]()
    for i in 0..<d {
        temp.append(arr[i])
    }
    for i in d...arr.count - 1  {
        arr[i - d] = arr[i]
        
    }
    let count = arr.count - d
    for i in count...arr.count - 1  {
        arr[i] = temp[i-count]
        
    }
    return arr
}
var arr1 = [5,5,7,8,8,9,9,10]
print("leftRotation",leftRotateArrayByD(&arr1, d: 2))
// createrevesearray. from first n element
func CustomReverseArr (_ arr: inout [Int], start: Int, end: Int){
    var start = start
    var end = end
    while start < end {
        arr.swapAt(start, end)
        start += 1
        end += 1
    }
}
func leftRotateArrayByDOptimal(_ arr: inout [Int], d : Int) -> [Int] {
    let n = arr.count
    if n == 0 || d%n == 0 {
        return arr
    }
    let d = d % n
    CustomReverseArr(&arr, start: 0, end: d - 1)
    CustomReverseArr(&arr, start: d , end: n - 1)
    CustomReverseArr(&arr, start: 0 , end: n - 1)
    return arr
}
func removeAllzeroToEnd(_ arr: inout [Int])-> [Int] {
    var j = 0
    for i in 0...arr.count - 1
    {
        print("ij",i,j)
        print("va",arr[i],arr[j])
        if arr[i] != 0 {
            arr.swapAt(i, j)
            j += 1
        }
    }
      
    return arr
}
var arr2 = [1,0,2,8,2,0,0,4,5,1]
print("removeZero",removeAllzeroToEnd(&arr2))
func findUnionOfTwoArray(_ arr1: [Int],arr2: [Int])-> [Int]{
    var setarr = Set<Int>()
    for i in arr1
    {
        setarr.insert(i)
    }
    for i in arr2
    {
        setarr.insert(i)
    }
    let arr = Array(setarr.sorted())
    print("set",setarr,arr)
    return arr
}
print("union",findUnionOfTwoArray(arr1, arr2: arr2))
func findEquilibriumIndex(in arr: [Int]) -> [Int] {
    var totalSum = 0
    for num in arr {
        totalSum += num
    }

    var leftSum = 0
    var equilibriumIndices = [Int]()

    for i in 0..<arr.count {
        let rightSum = totalSum - leftSum - arr[i]
        if leftSum == rightSum {
            equilibriumIndices.append(i)
        }
        leftSum += arr[i]
    }

    return equilibriumIndices
}
let arrne = [-7, 1, 5, 2, -4, 3, 0]
let result = findEquilibriumIndex(in: arrne)
print("Equilibrium Indices: \(result)") // Output: [3, 6]
