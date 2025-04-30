import UIKit
import SwiftUI
var greeting = "Hello, playground"


class SLNode<T> {
    var val : T
    var next: SLNode?
    init(val: T, next: SLNode? = nil) {
        self.val = val
        self.next = next
    }
}
class singleLinkelist<T> {
    typealias Node = SLNode<T>
    var head: Node?
    var first: Node? {
        return head
    }
    var last : Node?{
        guard var nextNode  = head?.next else{
            return nil
        }
        while let node = nextNode.next {
            nextNode = node
        }
        return nextNode
    }
    var count : Int {
        guard var node = head else {
            return 0
        }
        var count = 1
        while let nextNode = node.next {
            node = nextNode
            count += 1
        }
        return count
    }
    func appendElement(val: T) {
        let newNode = Node(val: val)
        if var last = last {
          // atleast one value exist
            var current = head
            while   current?.next  != nil {
                current = current?.next
            }
            current?.next = newNode
        } else {
            head = newNode
        }
    }
    
}
//dobly linkelist
class LLNode <T>{
    var val: T
    var next : LLNode?
    var previous: LLNode?
    init(val: T) {
        self.val = val
        
    }
}

class LinkedList<T> {
    typealias Node = LLNode<T>
     var head: Node?
    var first: Node?{
        return head
    }
    public var last: Node?{
        guard var node = head else {
            return nil
        }
        while let next = node.next {
            node = next
        }
        return node
    }
   
    public var count : Int {
        guard var node = head else {
            return 0
                
        }
        var count = 1
        while let next = node.next {
            node = next
            count += 1
        }
        return count
    }
    public var printval: String {
        var stringAaa = "["
        guard var node = head else{
            return stringAaa + "]"
        }
        while let next = node.next {
            print("node",next.val)
            stringAaa += "\(next.val)"
            node = next
        }
        stringAaa += "\(node.val)"
        return stringAaa + "]"
    }
    public func append(valu:T) {
        let newNode = Node(val: valu)
        if let lastNode = last {
            // atleast one
           
            newNode.previous = lastNode
            lastNode.next = newNode
            
        } else {
            // no nods in list
            head = newNode
            
        }
    }
    public func findNode(atindex index: Int) -> Node {
        if index == 0 {
            return head!
        } else {
            var node = head?.next
            for _ in 1..<index  {
                node = node?.next
                if node == nil{
                    break
                }
               
            }
            return node!
        }
    }
    public func insertNode(val: T, index: Int) {
        let newnode = Node(val: val)
        if index == 0 {
            newnode.next = head
            head?.previous = newnode
            head = newnode
        } else {
            let prev = self.findNode(atindex: index - 1)
            let next = prev.next
            newnode.previous = prev
            newnode.next = next
        }
        
    }
}
let list  = LinkedList<String>()
list.first
list.last
list.append(valu: "poonsm")

list.append(valu: "yadav")
list.printval
print("list",list)

list.findNode(atindex: 0).val
list.findNode(atindex: 1).val
class ListNode{
    
    var value: Int
    var next: ListNode? = nil
    init(value: Int) {
        self.value = value
      
    }
}
func removeHead(_ head:  ListNode?)-> ListNode?{
  
   return head?.next
 
}
func removeTailOfLinkedList(_ head: ListNode?) -> ListNode? {
     var current = head
    while current?.next?.next != nil {
        current = current?.next
    }
    current?.next = nil
    return head
}
// reverse alinkedList
func reverseLinkList(_ head:ListNode?)  {
    var stack = [ListNode]()
    var current = head
    while let curentNode = current {
        stack.append(curentNode)
        current = curentNode.next
    }
    let lastNode = stack.popLast()
    current = lastNode
    while !stack.isEmpty {
        current?.next = stack.popLast()
        current = current?.next
    }
}
//timeComplexity = O(n)
//SpaceComplexity = O(n)
// optimal solution
func reverseLinkedListusingOptimalSolution(_ head: ListNode?)-> ListNode?{
    var current : ListNode?
    var prev : ListNode? = nil
    current = head
    while current != nil {
        let temp = current?.next
        current?.next = prev
        prev = current
        current = temp
    }
    return prev
}
var node1: ListNode? = ListNode(value: 1)
let node2 = ListNode(value: 2)
let node3 = ListNode(value: 3)
node1?.next = node2
node2.next = node3

func printLinkedList(_ head: ListNode?) {
    var current = head
    while current != nil {
        print(current!.value, terminator: current!.next == nil ? "\n" : " -> ")
        current = current!.next
    }
}
func countLinkedList(_ head: ListNode?)-> Int{
    var current = head
    var count = 0
    while current != nil {
        current = current?.next
        count += 1
    }
    return count
}
func removeKintheList(_ head: ListNode?, k: Int)-> ListNode? {
    if head == nil {
        return head
    }
    var current = head
    var prev : ListNode?
    var count = 0
    if k == 1 {
        current = current?.next
        print("current",current)
        return current
    }
    else
    {
        while current != nil {
            count += 1
            if count == k  {
                prev?.next = prev?.next?.next
                break
            }
            prev = current
            current = current?.next
        }
    }
    return current
}
func insertKIntheList(_ head: ListNode?, k: Int,value: Int) -> ListNode? {
    var current = head
    let newNode = ListNode(value: value)
    var count = 0
    if current == nil  {
        return head
    }else if k == 1 {
        newNode.next = head
       return newNode
    } else {
        while current != nil {
            count += 1
            if count == k - 1  {
                newNode.next = current?.next
                current?.next = newNode
                current = newNode
                break
             
            }
            current = current?.next
        }
    }
    return head
    
}
func findMiddleOfLinkedList(_ head: ListNode?) -> ListNode?
{
    
  
    var fast = head
    var slow = head
    if head == nil {
        return nil
    } else if head?.next == nil {
        return head
    } else if head?.next?.next == nil {
        return head?.next?.next
    } else {
        //slow and fast pointer
        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        return slow
       /* while temp != nil {
            count += 1
            temp = temp?.next
        }
        var middle = count/2 + 1
        var index = 0
        temp = head
        print("countmiddle",count,middle)
        while temp !=  nil {
            index += 1
            if middle == index {
                break
            }
            temp = temp?.next
            print("index",temp?.value,index)
        }*/
       
    }
}
func findthelinkedListHasCycle(_ head: ListNode?) -> ListNode? {
    
    var slow = head
    var fast = head
    
    
    while fast != nil && fast?.next != nil {
        slow = slow?.next
        fast = fast?.next?.next
        if fast === slow {
            
            var temp = head
            while temp !== slow{
                temp = temp?.next
                slow = slow?.next
            }
            return temp
        }
        
        
        
    }
    return nil
    
}
print("Original List:")

//removeTailOfLinkedList(node1)
printLinkedList(node1)
let count = countLinkedList(node1)
print("Reversed List:",count)
//let head = removeKintheList(node1, k: 1)
//let inserhead = insertKIntheList(node1, k: 4, value: 14)
//print("Original List:afterk ", head?.value)
//printLinkedList(inserhead)
let middlenode = findMiddleOfLinkedList(node1)
print("middleNode",middlenode?.value)
//let result = findthelinkedListHasCycle(node1)
//print("cycle",result)
let revesr = reverseLinkedListusingOptimalSolution(node1)
printLinkedList(revesr)
//timeComplexity = O(n)
//SpaceComplexity = O(1)
// recursive
func recursivlyReversed(_ head: ListNode?) -> ListNode?{
    if head == nil || head?.next == nil {
        return head
    }
    let newhead = recursivlyReversed(head?.next)
    head?.next?.next = head
    head?.next = nil
    return newhead
}
//
