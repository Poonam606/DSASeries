import UIKit

var greeting = "Hello, playground"
func factorial (_ n : Int) -> Int {
    if n == 0 {
        return 1
    }
    else {
        return n * factorial(n - 1)
    }
}
print("factorial",factorial(10))
func fibanocciSeries(_ n : Int) -> Int {
    if n <= 1 {
       return  n
    }else {
        return fibanocciSeries(n - 1) + (n - 2)
    }
}
print("finnoci",fibanocciSeries(6))
func reverseArray<T>(_ arr: [T]) -> [T] {
    if arr.isEmpty {
        return []
    } else {
        let dropvalue = Array(arr.dropFirst())
        print("dropvalue",dropvalue)
        print("revser",dropvalue + [arr.first!])
        return  reverseArray( dropvalue + [arr.first!])
    }
}
print(reverseArray([1,2,3,4,5]))
