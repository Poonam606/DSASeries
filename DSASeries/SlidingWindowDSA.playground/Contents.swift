import UIKit

var greeting = "Hello, playground"
// find largest SubArray with sum is less than equal to k return arra
// Brute force Approach
func findLargestSubArrayBruteForce(arr:  [Int], k : Int) -> [Int] {
  var maxLenght = 0
    var subArr = [Int]()
    for i in 0..<arr.count {
        var sum = 0
        for j in i..<arr.count {
            sum = sum + arr[j]
            if sum <= k  {
                let length = j - i + 1
                print("length",j - i + 1)
                if length > maxLenght {
                    maxLenght = length
                    subArr = Array(arr[i...j])
                }
               
            } else {
                break
            }
            
        }
    }
    return subArr
}
func findLargestSubArrayTwoPointer(arr:  [Int], k : Int) -> [Int] {
    var maxLenght = 0
      var subArr = [Int]()
      var l = 0
       var  r = 0
    var sum = 0
    while (r < arr.count) {
        sum = sum + arr[r]
        if sum > k {
            sum = sum - arr[r]
            l += 1
        }
        if sum <= k  {
            let length = r - l + 1
            print("length",r - l + 1)
            if length > maxLenght {
                maxLenght = length
                subArr = Array(arr[l...r])
            }
        }
        r += 1
    }
    return subArr
}
let arr = [2,5,1,7,10]
let result = findLargestSubArrayTwoPointer(arr: arr, k: 14)
print(result)
func findMaximumPointFromcardConsucutively(arr: [Int], k : Int) -> [Int] {
    var windowSum = arr[0..<k].reduce(0, +)
    var maxSum = windowSum
    var subArray = [Int]()
    guard arr.count >= k  else {
        return []
    }
    for i in k..<arr.count {
        windowSum += arr[i] - arr[i - k ]
        maxSum = max(maxSum,windowSum)
        let startIndex = i - k + 1
        subArray = Array(arr[startIndex..<startIndex + k])
    }
    return subArray
}
let cards = [1, 2, 3, 4, 5, 6, 1]
let k = 3
print(findMaximumPointFromcardConsucutively(arr: cards, k: k))
func findSumOfTwoNumber(arr: [Int], target : Int) -> [Int]{
   
    var sum = 0
    var mapArr = [Int: Int]()
    // bruteForceAproach
   /*for i in 0..<arr.count {
        for j in i + 1..<arr.count {
            sum = arr[i] + arr[j]
            if sum == target  {
                return [i, j]
            }
        }
    }*/
    for i in 0..<arr.count {
        let valueAtIndex = arr[i]
        let remaindorval = target - arr[i]
        print("remaindorval",remaindorval)
        if let valueIndex = mapArr[remaindorval] {
            return [ valueIndex,i]
        }
        mapArr[valueAtIndex] = i
        print("mapArr",mapArr)
    }
    return []
    
}

print(findSumOfTwoNumber(arr: cards, target: k))
// best time to buy and sell stock
let stockArr = [7,1,5,3,6,4]
func buyAnsSellStock(arr: [Int]) -> Int {
  var minPrice = arr[0]
   var profilt = 0
    for price in arr {
        minPrice = min(minPrice, price)
        print("minimumprice",minPrice)
        profilt = max(profilt, price - minPrice)
        print("protinLoop",profilt)
    }
    return profilt
}
print("profit",buyAnsSellStock(arr: stockArr))
