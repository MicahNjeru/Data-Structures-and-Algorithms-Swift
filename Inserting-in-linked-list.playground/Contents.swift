import Cocoa

// Node for establishing linked list data format
public class Node {
    // We declare properties of a node
    var data: Int
    var next: Node?
    
    // We initialize data of the node
    init(data: Int) {
        self.data = data
    }
}

// We create a linked list class
public class LinkedList {
    // We create the head as optional since it's going to be nil at the beginning
    var head: Node?
    
    // We create a method for finding a Node in a linked list
    func find(key: Int) -> Node? {
        // we assign the current variable pointer to the head
        var curr = head
        
        // we check if the current Node pointer is not equal to nil and the current head (data) is not equal to the key we ...
        // are searching then we ...
        while curr != nil && curr!.data != key {
            // assign the current variable to the next Node
            curr = curr!.next
        }
        // We return the current variable which is holding the key we were searching for.
        return curr
    }
    
    /// Deleting a Node in a Linked List
    // We create a method for deleting a Node in the linked list
    func delete(key: Int) -> Node? {
        // We check if the head is currently equal to nil, if so ...
        if head == nil {
            // we return the head
            return head
        }
        
        // We create variables for tracking head, and previous Nodes
        var curr = head
        var prev: Node?
        
        // We loop while checking if:
        // the current pointer is not equal to nil and
        // the data of the current Node is not equal to the key passed in, if so ...
        while curr != nil && curr!.data != key {
            // we assign previous variable to current Node
            prev = curr
            // Then assign the current Node variable to the next Node that was previously being iterated over
            curr = curr!.next
        }
        
        // If the previous node (which was assigned above) is nill (meaning it's reached the end of the loop) and ...
        // the current Node variable is not equal to nil
        if prev == nil && curr != nil {
            // we assign the head variable to the current node data
            head = curr!.next
            // if the current variable Node is nill ...
        } else if curr == nil {
            // we return nil since we are at the end of the linked list
            return nil
            // we assign the previous' next variable Node address to the current next variable's Node address
        } else {
            prev!.next = curr!.next
        }
        // we return the current (latest Node variable pointer)
        return curr
    }
    
    /// Inserting to a Linked List
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
    /// Appending to a Linked List
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

// Function test
let list = LinkedList()
list.insert(data: 10)
list.insert(data: 9)
list.insert(data: 8)
list.insert(data: 7)
list.insert(data: 6)
//list.printList()
//print("\n")
list.append(data: 11)
//list.printList()

let found = list.find(key: 8)
//print(found?.data ?? -1)
//print("\n")

let findEleven = list.find(key: 12)
//print(findEleven?.data ?? -1)
//print("\n")

let _ = list.delete(key: 12)
//list.printList()
//print("\n")
// End of Function test

/// Reversing Linked List
func reverseList() {
    var current = list.head
    var next: Node?
    var prev: Node?
    
    while current != nil {
        next = current!.next
        current!.next = prev
        prev = current
        current = next
    }
    list.head = prev
}

// Function test
reverseList()
//list.printList()

// Time complexity is O(n)


/// Function for Merging two sorted Linked List
func mergeTwoLists(_ l1: Node?, _ l2: Node?) -> Node? {
    // We create two Linked list variables and initialize with inputs
    var list1 = l1
    var list2 = l2
    
    // We create a Node with data of -1 to be act as placeholder for the first Node
    var result: Node? = Node(data: -1)
    var head = result
    
    // We loop over the two linked lists until none is null
    while list1 != nil && list2 != nil {
        // we then check if the data of first list is less than the second list, if so ...
        if list1!.data < list2!.data {
            // we insert the lesser node to the results array of linked lists
            result!.next = list1
            // we move the pointer to the next node
            list1 = list1!.next
            // if list2 is lesser than the list1
        } else {
            // we insert the lesser node to the results array of linked lists
            result!.next = list2
            // we move the pointer to the next node
            list2 = list2!.next
        }
        // We move the pointer to the end of the linked list
        result = result!.next
    }
    
    // We check if list1 is not empty, if so ...
    if list1 != nil {
        // we assign the result array pointer to list1
        result!.next = list1
        // otherwise ...
    } else {
        // we assign the result array pointer to list2
        result!.next = list2
    }
    // We move the head to the next node (who's data isn't -1)
    head = head!.next
    // we return the head of the first node
    return head
}

// Function test
//var list1 = Node(data: 1)
//list1.next = Node(data: 3)
//
//var list2 = Node(data: 1)
//list2.next = Node(data: 2)
//list2.next = Node(data: 3)
//list2.next = Node(data: 4)
//
//let result = mergeTwoLists(list1, list2)
//var curr = result
//
//while curr != nil {
//    print(curr!.data)
//    curr = curr!.next
//}

// Time complexity of the above is O(n) because we only loop once

/// Detecting Loops/Cycles in Linked list
func detectLoop(_ list: Node?) -> Bool {
    // We check if the input list is empty, if so, return false and exit the function
    if list == nil {
        return false
    }
    
    // We assign the input list to two variables for slow checking and fast checking
    var slow = list
    var fast = list
    
    // We loop over the slow linked list first, node by node while we loop over the fast linked list
    // at two positions concurrently
    while slow!.next != nil && fast!.next != nil && fast!.next?.next != nil {
        // if the condition above is met, we move the slow pointer to the next node
        slow = slow!.next
        // and we move the fast pointer to the next-next node (skip the next node and move to the one after it)
        fast = fast!.next!.next
        
        // if slow node data is same as the fast node data, we return there's a loop
        if slow!.data == fast!.data {
            return true
        }
    }
    
    // if all is checked and there's no match, we return false
    return false
}


// Function test
var loopList = Node(data: 1)
loopList.next = Node(data: 2)
let three = Node(data: 3)

loopList.next!.next = three
loopList.next!.next!.next = Node(data: 4)
loopList.next!.next!.next!.next = Node(data: 5)
loopList.next!.next!.next!.next!.next = three

//print(detectLoop(loopList))

/// Length of the loop in a Linked List
func detectAndCountCycle(_ list: Node?) -> Bool {
    // We create variables for holding the linked list
    var slow = list
    var fast = list
    
    // We loop through the list using two trackers, slow and fast (fast moves in steps of 2 checking 2 at a time)
    while slow!.next != nil && fast!.next != nil && fast!.next != nil {
        slow = slow!.next
        fast = fast!.next!.next
        
        if slow!.data == fast!.data {
            var count = 0
            
            repeat {
                count += 1
                fast = fast!.next
            } while slow!.data != fast!.data
            print("cycle len: \(count)")
            return true
        }
    }
    return false
}

// Time complexity = O(n*m)
// For bigger input, it's going to be = O(n^2)
print(detectAndCountCycle(loopList))


