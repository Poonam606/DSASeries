import UIKit



func angryProfessor(k: Int, a: [Int]) -> String {
    // Write your code here
    var count = 0
    for i in 0..<a.count {
        print("i",a[i])
        if a[i] <= 0 {
            count += 1
        }
    }
    print("count",count)
    if count >= k {
        return "Yes"
    } else {
        return "No"
    }

}
//debugPrint("printyesNo",angryProfessor(k: 3, a: [-1, -3, 4 ,2]))

func beautifulDays(i: Int, j: Int, k: Int) -> Int {
    // Write your code here
    var count = 0
    for m in i...j {
        let num = m
        
        if let reversedNumber = Int(String(String(num).reversed())) {
            let val = num - reversedNumber
            if val % k == 0 {
               count += 1
            }
        } else {
            print("Failed to reverse the number")
        }
         
    }
    return count

}
debugPrint( "beautufulDays",beautifulDays(i: 20, j: 23, k: 6))

func printvalues(){
    defer {print("1")}
    defer {print("2")}
    do {print("3")}
}
debugPrint(printvalues())
