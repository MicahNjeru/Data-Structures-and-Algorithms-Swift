import Cocoa

// Node for establishing linked list data format
class Node {
    // We declare properties of a node
    var data: Int
    var next: Node?
    
    // We initialize data of the node
    init(data: Int) {
        self.data = data
    }
}

// We create a linked list class
class LinkedList {
    // We create the head as optional since it's going to be nil at the beginning
    var head: Node?
    
    // We create a function for inserting a new node at the beginning of the linked list
    func insert(data: Int) {
        // We create a new node by using the Node class and passing in the data
        let newNode = Node(data: data)
        // We assign the new node's pointer to the optional unassigned Node class (nil)
        newNode.next = head
        // We then assign the head to new node itself since it's the first and only node in the linked list ...
        // at first
        head = newNode
    }
    
    // We create a function for inserting a new node at the end of the linked list
    func append(data: Int) {
        // We check if the current head is nil, if so ...
        if head == nil {
            // we insert the new node as the first node
            insert(data: data)
            return
        }
        
        // If the head (a Node) is not nil, as checked above, we assign it to a variable
        var curr = head
        // then loop over all the heads (Nodes) checking if next (pointer) is not nil, if it is ...
        while curr!.next != nil {
            // we assign the head (Node) to the last head's (Node's) pointer
            curr = curr!.next
        }
        
        // We then create the new Node and assign it as the last node
        let newNode = Node(data: data)
        curr!.next = newNode
    }
    
    // Here we print all nodes in the linked list beginning with the first node and accessing it's pointer
    // which we use to print it's node and access the next node's location
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
