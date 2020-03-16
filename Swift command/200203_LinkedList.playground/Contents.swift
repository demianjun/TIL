import UIKit

protocol LinkedListStack {
  var size: Int { get }     // 전체 개수
  var isEmpty: Bool { get } // 노드가 있는지 여부
  func push(node: Node)     // 데이터 삽입
  func pop() -> String?     // 데이터 추출
  func peek() -> String?    // 마지막 데이터 확인
}

final class Node {
  var value: String?
  var next: Node?

  init(value: String) {
    self.value = value
  }
}
//let node = Node(value: "A")
//node.value // A
//node.next = Node(value: "B")

//
//
final class SingleLinkedList: LinkedListStack {
  private var head: Node = Node(value: "")
  var isEmpty: Bool { return head.next == nil }
  var size: Int = 0 {
    didSet { size = size < 0 ? 0 : size }
  }
  
  private var lastNode: Node? {
//    guard var node = head.next else { return nil } // 방법1
    guard var node = head.next else { return head }
    while let nextNode = node.next {
      node = nextNode
    }
    return node
  }
  
  func push(node newNode: Node) {
    size += 1
//    guard let node = lastNode else { return head.next = newNode } // 방법1
    guard let node = lastNode else { return }
    node.next = newNode
  }
  
  func peek() -> String? {
//    guard let node = lastNode else {return nil}
//    return node.value
    return lastNode?.value
  }
  
  func pop() -> String? {
    size -= 1
    guard var node = head.next else { return nil }
    while let nextNode = node.next {
      guard nextNode.next != nil else {
        node.next = nil
        return nextNode.value
      }
      node = nextNode
    }
    head.next = nil
    return node.value
  }
}


let linkedList = SingleLinkedList()
linkedList.isEmpty

linkedList.push(node: Node(value: "A"))
linkedList.push(node: Node(value: "B"))
linkedList.peek()
linkedList.size
