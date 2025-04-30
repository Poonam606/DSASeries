import UIKit

let years = [15, 2, 67, 4, 5]
let sum = years.filter({ $0 < 10 }).map({ $0 * 2 }).reduce(5, +)
print("Sum",sum)
func secondLargestNumber(from array: [Int]) -> Int? {
    let sortedArray = Array(Set(array)).sorted(by: >) // Remove duplicates and sort descending
    return sortedArray.count > 1 ? sortedArray[1] : nil
}
let numbers = [10, 20, 5, 8, 30, 20]
 let secondLargest = secondLargestNumber(from: numbers)
 print("second",secondLargest)

let queue = OperationQueue()
queue.maxConcurrentOperationCount = 1

queue.addOperation {
    print("task1")
}
queue.addOperation {
    print("task2")
}
queue.addOperation {
    print("task3")
}
queue.addOperation {
    print("task4")
}
queue.addOperation {
    print("task5")
}
print("all task done")
let lock = NSLock()
var sharedCounter = 0
func increamentCounter(){
    lock.lock()
    sharedCounter += 1
    print("counter",sharedCounter
    )
    lock.unlock()
}
increamentCounter()
increamentCounter()
increamentCounter()
increamentCounter()
