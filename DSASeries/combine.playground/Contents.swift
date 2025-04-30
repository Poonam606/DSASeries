import UIKit
var str = "Poonam"
let arr = str.count
func reverseString(str: String) -> String{
    var reverseSte = ""
    for obj in str {
        print("obj",obj)
        reverseSte = "\(obj)" + reverseSte
        print("revobj",reverseSte)
    }
    return reverseSte
}
print("revese",reverseString(str: "poonam"))
let charDict = Dictionary(str.map {($0, 1)}, uniquingKeysWith: +)
print("charDict",charDict)
let charDict1 = Dictionary(str.map { ($0, 1)}, uniquingKeysWith: +)
//print( "char dict",charDict)
var dictName = [String : Int]()
var strArr = Array(str)
//print("strArr",strArr)
func getDict(){
    for (i,char) in str.enumerated() {
        let fliter = strArr.filter{$0 == char}
        dictName.updateValue(fliter.count, forKey: String(char))
        //print("dictnam",dictName)
    }
}
//print("getDict",getDict())
func swapfun<T: Numeric>(_ a: inout T, _ b: inout T) {
    a = a + b
    b = a - b
    a = a - b
}
var x = 10
var y = 20
swapfun(&x, &y)

//print("x",x,y)

func findsunbstring(str: String) -> Int{
   var start = 0
    var maxlenght = 0
    var hashDict = [Character: Int]()
    for (i, char) in str.enumerated(){
        if let previousIndex = hashDict[char], previousIndex >= start
        {
            start += 1
        }
        hashDict[char] = i
        maxlenght = i - start + 1
        
    }
    return maxlenght
}
var str1 = "abcabcbb"
print("str",findsunbstring(str: str1))
var int: Double = 30
print("njn",str,int)
debugPrint("njn",str,int)
func findfactirial(val: Int) -> Int
{
    // using higher order
    var factorial = (1...val).map {$0}.reduce(1, *)
    // using for loop
    for i in 1...val {
        factorial = factorial * i
    }
   
    return factorial
}
print("factorial",findfactirial(val: 4))
func findEquillibirium(arr:[Int]) -> Int?
{
    var totlSum = arr.reduce(0, +)
    print("totlaSum",totlSum)
    var leftSum = 0
    for (index,val) in arr.enumerated() {
        let rightSum = totlSum - leftSum - val
        print("leftSum",leftSum,rightSum)
      
        if rightSum == leftSum
        {
            return index
        }
        leftSum += val
    }
    return nil
}
let array = [1, 3, 5, 2, 2]
if let equilibriumIndex = findEquillibirium(arr: array) {
    print("Equilibrium point is at index: \(equilibriumIndex)")
} else {
    print("No equilibrium point found")
}
func cutTheSticks(arr: [Int]) -> [Int] {
    // Write your code here
    var newArr = arr.sorted()
     for obj in  arr{
        let shortLenth = newArr.first
         newArr = newArr.map({$0 - shortLenth!}).filter{ $0 > 0}
        print("newrr",newArr)
         
     }
     
  return newArr
}
print("cutstick",cutTheSticks(arr: [5, 1, 3, 6, 2, 4]))
