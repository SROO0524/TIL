# Data Structure

Status: In Progress

## ***Data Structure***

- 자료를 효율적으로 이용할 수 있도록 저장하는 방법을 의미
- 1차원 형태의 메모리 공간과 현실 세계의 다차원 데이터를 어떻게 변환할 것인지 다루는 일이기도 함 추상자료형에서 정의한 내용을 실제로 구체화한 형태
- 추상화 - 무엇(What) 을 할 것인가
- 구체화 - 어떻게(How) 할 것인가
- 잘 짜여진 자료구조는 적은 메모리 용량과 연산 시간을 갖게 되므로 효과적인 알고리즘 구현에 중요한 역할 주요 관점 : 검색, 삽입, 변경, 삭제

## ***Types of Data Structure***

![Data%20Structure%2007ff2b8eb9e04065b6fd260f664ec822/_2020-06-29__4.22.37.png](Data%20Structure%2007ff2b8eb9e04065b6fd260f664ec822/_2020-06-29__4.22.37.png)

- Linear Data Structure 만 알아두어도 훌륭함👌🏻

## ***Principle***

** 참고만

- 자료구조가 가져야하는 특징
- **정확성(Correctness) - 필요한 자료에 필요한 연산을 정확히 적용 할 수 있어야 함**
- **효율성(Efficiency) - 상황에 맞는 구조를 사용하여 자료 처리의 효율성 상승**
- **추상화(Abstraction) - 복잡한 자료의 핵심 개념 또는 기능을 추상화하여 간단하고 쉽게 사용할 수 있도록 설계**
- **재사용성(Reusability) - 추상화된 개념을 모듈화하여 독립적이고 쉽게 재사용 가능하도록 함**

- 자료구조 선택의 기준
- 자료의 크기와 처리시간
- 자료의 활용 및 갱신 빈도
- 활용 용이성

![Data%20Structure%2007ff2b8eb9e04065b6fd260f664ec822/_2020-06-29__4.30.39.png](Data%20Structure%2007ff2b8eb9e04065b6fd260f664ec822/_2020-06-29__4.30.39.png)

Complexity : 공간복잡성보다 시간 복잡성이 더 중요함(IOT 같이 특수한 경우는 제외)

## ***Complextity***

- **시간복잡성 - 데이터 연산 시간은 가능한 작아야 함**
- **공간복잡성 - 데이터 연산 및 저장에 필요한 메모리 공간은 가능한 작아야 함**
- Complexity : 공간복잡성보다 시간 복잡성이 더 중요함(IOT 같이 특수한 경우는 제외)

- **Worst Case**

**: 빅-오 (𝚶, Big-Oh) 표기법.**

**: 최악의 경우를 가정. 시간 복잡도를 말할 때 가장 일반적으로 사용**

- **Average Case**

**: 세타 (𝚹, Theta) 표기법
: 평균적인 경우를 가정**

- **Best Case**

**: 빅-오메가 (𝛀, Big-Omega) 표기법**

**: 최선의 경우를 가정**

## ***Common Asymptotic Notations***

![Data%20Structure%2007ff2b8eb9e04065b6fd260f664ec822/_2020-06-29__4.34.09.png](Data%20Structure%2007ff2b8eb9e04065b6fd260f664ec822/_2020-06-29__4.34.09.png)

![Data%20Structure%2007ff2b8eb9e04065b6fd260f664ec822/_2020-06-29__4.34.33.png](Data%20Structure%2007ff2b8eb9e04065b6fd260f664ec822/_2020-06-29__4.34.33.png)

## ***Linked List***

- **Single Linked List (단일 연결 리스트)**

- **하나의포인터멤버로다른노드데이터를가르키는것 (HEAD없이TAIL만존재)**
- **앞으로 돌아갈 수 없으며, 중간 위치로 바로 접근하지 못 함. O(N)**
- **Head 노드 주소를 잃어버리면 데이터 전체 접근 불가. 중간이 유실되면 그 이후 노드들에 접근 불가**
- **Queue 구현에서 많이 사용. 파일 시스템 중 FAT 시스템이 이런 형태로 연결. 랜덤 엑세스 성능이 낮고 불안정**

- **Double Linked List (이중 연결 리스트)**
- HEAD 가 이전, TAIL 이 이후 노드 데이터를 가르키는 것
- 끊어진 체인 복구 가능

- Circular Linked List (환형 연결 리스트)
- 처음 노드와 마지막 노드가 서로 연결된 구조
- 스트림 버퍼의 구현에 많이 사용되며 할당된 메모리 공간 삭제 및 재할당의 부담이 없어서 큐 구현에도 적합

## ***Single Linked List***

![Data%20Structure%2007ff2b8eb9e04065b6fd260f664ec822/_2020-06-29__4.36.52.png](Data%20Structure%2007ff2b8eb9e04065b6fd260f664ec822/_2020-06-29__4.36.52.png)

## ***Single Linked List ADT Example***

- Insertion − Adds an element at the beginning of the list.
- Deletion − Deletes an element at the beginning of the list.
- Display − Displays the complete list.
- Search − Searches an element using the given key.
- Delete − Deletes an element using the given key.

## ***Single Linked List  Example***

```swift
import Foundation

protocol LinkedListStack {
  var isEmpty: Bool { get } // 노드가 있는지 여부
  var size: Int { get }     // 전체 개수
  func push(node: Node)     // 데이터 삽입
  func peek() -> String?    // 마지막 데이터 확인
  func pop() -> String?     // 데이터 추출
}

final class Node {
    
    var value : String
    var next : Node?
    
    init(value : String) {
        self.value = value
    }
    
}

final class SingleLinkedList: LinkedListStack {
    private var head : Node? = nil
    var isEmpty: Bool { head == nil }
    var size: Int = 0
//    var someArray : [Array<Any>?]
    
    private var lastnode : Node? {
        guard var currentNode = head else { return nil }
        while let nextNode = currentNode.next {
            currentNode = nextNode
        }
        return currentNode
        // A(head) -> B -> C
    }
    
    func push(node newNode : Node) {
        size += 1
        
        if let lastNode = lastnode { // node가 하나 이상 있을때
            lastNode.next = newNode
        } else { // head 가 nil 일때
            head = newNode
        }
        
        
//        head = node // 첫번째 값이 들어왔을때 - A
//        head?.next = node // 두번째 값부터 - B
//        head?.next?.next = node //세번째값 - C
//
    }
    
    
    func peek() -> String? {
        lastnode?.value
    }
    
    func pop() -> String? {
        guard var currentNode = head else { return nil }
        while let _ = currentNode.next?.next {
            currentNode = currentNode.next!
        }
        size -= 1
        
        if let popValue = currentNode.next?.value {
        currentNode.next = nil
        return popValue
        } else { // head 값이 두개가 들어갈때를 대비해서 사용
            defer { head = nil } // ** defer : -- 종료되는 시점 마지막으로 실행되는것.
            return head!.value
        }
        
        // A -> B C (b와 C의 연결고리를 끊기)
      
    }
    
}

// MARK: 해답 

let linkedList = SingleLinkedList()
linkedList.isEmpty

linkedList.push(node: Node(value: "A"))
linkedList.push(node: Node(value: "B"))
linkedList.peek()
linkedList.size

linkedList.isEmpty
linkedList.pop()
linkedList.push(node: Node(value: "C"))
linkedList.push(node: Node(value: "D"))
linkedList.peek()
linkedList.size

linkedList.pop()
linkedList.pop()
linkedList.pop()
linkedList.pop()
linkedList.size
linkedList.isEmpty
```

## ***Single Linked List - Insert Node***

![Data%20Structure%2007ff2b8eb9e04065b6fd260f664ec822/_2020-06-29__4.38.50.png](Data%20Structure%2007ff2b8eb9e04065b6fd260f664ec822/_2020-06-29__4.38.50.png)

## ***Double Linked List***

![Data%20Structure%2007ff2b8eb9e04065b6fd260f664ec822/_2020-06-29__4.39.32.png](Data%20Structure%2007ff2b8eb9e04065b6fd260f664ec822/_2020-06-29__4.39.32.png)

![Data%20Structure%2007ff2b8eb9e04065b6fd260f664ec822/_2020-06-29__4.40.00.png](Data%20Structure%2007ff2b8eb9e04065b6fd260f664ec822/_2020-06-29__4.40.00.png)

## ***Double Linked List ADT Example***

- **nsertion − Adds an element at the beginning of the list.**
- **Deletion − Deletes an element at the beginning of the list.**
- **Search − Searches an element using the given key.**
- **Insert Last − Adds an element at the end of the list.**
- **Insert After − Adds an element after an item of the list.**
- **Delete Last − Deletes an element from the end of the list.**
- **Display forward − Displays the complete list in a forward manner.**
- **Display backward − Displays the complete list in a backward manner.**

- **Double Linked List - Insert Node**

![Data%20Structure%2007ff2b8eb9e04065b6fd260f664ec822/_2020-06-29__4.41.45.png](Data%20Structure%2007ff2b8eb9e04065b6fd260f664ec822/_2020-06-29__4.41.45.png)

- **Double Linked List - Delete Node**

![Data%20Structure%2007ff2b8eb9e04065b6fd260f664ec822/_2020-06-29__4.42.47.png](Data%20Structure%2007ff2b8eb9e04065b6fd260f664ec822/_2020-06-29__4.42.47.png)

## Circular Linked List

![Data%20Structure%2007ff2b8eb9e04065b6fd260f664ec822/_2020-06-29__4.43.20.png](Data%20Structure%2007ff2b8eb9e04065b6fd260f664ec822/_2020-06-29__4.43.20.png)

![Data%20Structure%2007ff2b8eb9e04065b6fd260f664ec822/_2020-06-29__4.43.33.png](Data%20Structure%2007ff2b8eb9e04065b6fd260f664ec822/_2020-06-29__4.43.33.png)