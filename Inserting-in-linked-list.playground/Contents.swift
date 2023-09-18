import Cocoa

// Node for establishing linked list data format
class Node {
    var data: Int
    var next: Node?
    
    // We initialize data of the node
    init(data: Int) {
        self.data = data
    }
}

// We create a linked list class
class LinkedList {
    // We create the head as optional since it's going to be nill at the beginning
    var head: Node?
    
    // We create a function for inserting a new node at the beginning of the linked list
    func insert(data: Int) {
        let newNode = Node(data: data)
        newNode.next = head
        head = newNode
    }
    
    // We create a function for inserting a new node at the end of the linked list
    func append(data: Int) {
        if head == nil {
            insert(data: data)
            return
        }
        
        var curr = head
        while curr!.next != nil {
            curr = curr!.next
        }
        
        let newNode = Node(data: data)
        curr!.next = newNode
    }
    
    func printList() {
        var curr = head
        while curr != nil {
            print(curr!.data)
            curr = curr!.next
        }
    }
}

let list = LinkedList()
list.insert(data: 10)
list.insert(data: 9)
list.insert(data: 8)
list.insert(data: 7)
list.insert(data: 6)
list.printList()
print("\n")
list.append(data: 11)
list.printList()
