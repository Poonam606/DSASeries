import UIKit

var greeting = "Hello, playground"
func findDuplicateElemntsinArray(arr: [Int])-> [Int] {
    var resultArr = Set<Int>()
    var seenArray = Set<Int>()
    for elemment in arr {
        if seenArray.contains(elemment) {
            resultArr.insert(elemment)
        } else {
            seenArray.insert(elemment)
        }
        print("seen Arra", seenArray)
    }
    return Array(resultArr)
    
}
let arr = findDuplicateElemntsinArray(arr: [1,2,3,2,3,4,2])
print("duplicate",arr)

func findTwoSum(_num:[Int],  target: Int) -> [Int]? {
    var dict = [Int: Int]()
    for (i,num) in _num.enumerated() {
        print("i,num",i,num)
        let balancNumber  = target - num
        if let index = dict[balancNumber] {
            return [index,i]
        }
        dict[num] = i
    }
    return nil
}
let numbers = [11, 7, 2, 15]
let targetSum = 9
if let sum = findTwoSum(_num: numbers, target: targetSum) {
   print("sum", sum)
} else {
    print("not found")
}
