import UIKit

// Linked List


public class LLNode<T> {
    var value: T
    var next: LLNode?
    var previous: LLNode?
    
    
    public init(value: T) {
        self.value = value
    }
    
}


public class LinkedList<T> {
    public typealias Node = LLNode<T>
    
    private var head: Node?
    
    public var first: Node? {
        return head
    }
    
    public var last: Node? {
        guard var node = head else { return nil}
        while let next = node.next {
            node = next
        }
        return node
    }
    
    public func append(value: T) {
        let newNode = Node(value: value)
        if let lastNode = last {
            // at least one node in the list
            newNode.previous = lastNode
            lastNode.next = newNode
        } else {
            head = newNode
        }
    }
    
}


let list = LinkedList<String>()
list.first
list.append(value: "i")
list.append(value: "am")
list.append(value: "Max")

list.first
list.first?.next
