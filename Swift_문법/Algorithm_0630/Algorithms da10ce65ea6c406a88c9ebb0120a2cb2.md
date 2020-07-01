# Algorithms

Status: In Progress

## ***Algorithm***

- **어떤 문제를 해결하기 위해 정의된 절차와 방법, 명령어의 집합**
- **9세기 페르시아 수학자, 무하마드 알콰리즈미(Muhammad al-Kwarizmi) 의 이름에서 유래**
- **'콰라즘에서 온 사람이 가르쳐 준 수 (알 콰라즘)’ -> 알고리즘**

- **Examples**
- 택배루트
- 로봇청소기의 움직임
- 자동 주식거래 시스템
- 최적의 검색 결과
- 얼굴/ 지문 인식
- siri

## ***FlowChart***

![Algorithms%20da10ce65ea6c406a88c9ebb0120a2cb2/_2020-06-30__3.14.21.png](Algorithms%20da10ce65ea6c406a88c9ebb0120a2cb2/_2020-06-30__3.14.21.png)

![Algorithms%20da10ce65ea6c406a88c9ebb0120a2cb2/_2020-06-30__3.14.35.png](Algorithms%20da10ce65ea6c406a88c9ebb0120a2cb2/_2020-06-30__3.14.35.png)

## ***Condition***

- 알고리즘은 다음의 조건을 만족해야함

- **입력 : 외부에서 제공되는 자료가 0개 이상 존재한다.**
- **출력 : 적어도 1개 이상의 결과물을 출력해야 한다.**
- **명확성 : 수행 과정은 명확해야 하고 모호하지 않은 명령어로 구성되어야 한다.**
- **효율성 : 모든 과정은 명백하게 실행 가능(검증 가능)한 것이어야 한다.**
- **유한성(종결성) : 알고리즘의 명령어들은 계산을 수행한 후 반드시 종료해야 한다.**

## ***Google Algorithm***

- **세르게이 브린, 래리 페이지 논문**
- **The Anatomy of a Large-Scale Hypertextual Web Search Engine (링크)**
- **PageRank : 특정 페이지를 인용하는 다른 페이지가 얼마나 많이 있는지를 통해 랭킹 반영**

- PageRanks

![Algorithms%20da10ce65ea6c406a88c9ebb0120a2cb2/_2020-06-30__3.18.51.png](Algorithms%20da10ce65ea6c406a88c9ebb0120a2cb2/_2020-06-30__3.18.51.png)

## ***Sorting Algorithms***

- **정렬 알고리즘 - 알고리즘을 소개할 때 가장 대표적으로 소개되는 케이스**
- **worst, average, best case 등을 이해하기 쉽고 시각적으로 표현하기 좋음**
- **다양한 곳에서 자주 쓰이기 때문에 이미 다양한 알고리즘이 나와있고 현재도 계속 연구중**

 

- 참고링크

**15 Sorting Algorithms - [https://goo.gl/fG3TJ1](https://goo.gl/fG3TJ1)
Visualization and Comparison of Sorting Algorithms - [https://goo.gl/ayJvBG](https://goo.gl/ayJvBG)
Bubble-sort with Hungarian ("Csángó") folk dance - [https://goo.gl/Lwk7ya](https://goo.gl/Lwk7ya)
Merge Sort vs Quick Sort - [https://goo.gl/U1sL9w](https://goo.gl/U1sL9w)
Sorting - [http://sorting.at](http://sorting.at)
swift-algorithm-club - [https://github.com/raywenderlich/swift-algorithm-club](https://goo.gl/fG3TJ1](https://goo.gl/fG3TJ1))**

## ***Bubble Sort***

- **인접한 두 원소의 크기를 비교하여 큰 값을 배열의 오른쪽으로 정렬해 나가는 방식**
- **이미 대부분 정렬되어 있는 자료에서는 좋은 성능을 보이지만 그 외에는 매우 비효율적인 알고리즘**
- **단, 직관적이어서 쉽고 빠르게 구현 가능하여 많이 알려져 있음**
- **시간복잡도 - O(n2) ※ (n-1) + (n-2) + .... + 2 + 1 => n(n-1)/2**

[https://t1.daumcdn.net/cfile/tistory/9959803C5C4851D309](https://t1.daumcdn.net/cfile/tistory/9959803C5C4851D309)

![Algorithms%20da10ce65ea6c406a88c9ebb0120a2cb2/_2020-06-30__3.31.11.png](Algorithms%20da10ce65ea6c406a88c9ebb0120a2cb2/_2020-06-30__3.31.11.png)

- Example

```swift
// [ In playGround]

var inputCases = [
  [],
  [1],
  [1, 2, 3, 5, 6, 7, 9, 10, 14],
  [1, 1, 2, 2, 3, 3, 3, 3, 1, 1, 2, 2],
  [14, 10, 9, 7, 6, 5, 3, 2, 1],
  [5, 6, 1, 3, 10, 2, 7, 14, 9],
  Array(1...10).map { _ in Int.random(in: 1...999) },
]

// 버블 정렬 함수 생성 

func bubbleSort(input: inout [Int]) {

    guard !input.isEmpty else {return}
    
    for i in 1..<input.count {
        var isSorted = true
        
        for idx in 0..<input.count - i{
            print("\(i):", input)
            guard input[idx] > input[idx + 1] else { continue }
            //좌측 숫자가 우측 숫자보다 클때
            input.swapAt(idx, idx + 1)
            isSorted = false
        }
        guard !isSorted else { break }
    }
}

// 실행확인 

// 정답지 - 기본 정렬 함수
let sorted = inputCases.map { $0.sorted() }

// 직접 만든 정렬 함수 적용
for idx in inputCases.indices {
  bubbleSort(input: &inputCases[idx])
}

// 결과 비교. 정렬 완료가 나오면 성공
func testCases() {
  inputCases.enumerated().forEach { idx, arr in
    guard sorted[idx] != arr else { return }
    print("케이스 \(idx + 1) 정렬 실패 - \(inputCases[idx])")
  }
}
let isSuccess = sorted == inputCases
isSuccess ? print("정렬 완료") : testCases()

```

## ***Selection Sort***

- **데이터를 반복 순회하며 최소값을 찾아 정렬되지 않는 숫자 중 가장 좌측의 숫자와 위치 교환하는 방식**
- **최소값 선택 정렬 (Min-Selection Sort) : 가장 작은 값을 기준으로 정렬 (오름차순)**
- **최대값 선택 정렬 (Max-Selection Sort) : 가장 큰 값을 기준으로 정렬 (내림차순)시간복잡도 - O(n2)**

[https://t1.daumcdn.net/cfile/tistory/993DC6355C4851A014](https://t1.daumcdn.net/cfile/tistory/993DC6355C4851A014)

![Algorithms%20da10ce65ea6c406a88c9ebb0120a2cb2/_2020-06-30__3.37.14.png](Algorithms%20da10ce65ea6c406a88c9ebb0120a2cb2/_2020-06-30__3.37.14.png)

- Example

```swift
var inputCases = [
  [],
  [1],
  [1, 2, 3, 5, 6, 7, 9, 10, 14],
  [1, 1, 2, 2, 3, 3, 1, 2, 3],
  [14, 10, 9, 7, 6, 5, 3, 2, 1],
  [5, 6, 1, 3, 10, 2, 7, 14, 9],
  Array(1...10).map { _ in Int.random(in: 1...999) },
]

// 셀렉션 정렬 함수 생성 
func selectionSort(input: inout [Int]) {
    for i in input.indices {
        var minIndex = i
        for idx in (i + 1)..<input.count {
            guard input[minIndex] > input[idx] else { continue }
            minIndex = idx
            
            //minIndex = 4
        }
        input.swapAt(i, minIndex)
    }

// 실행확인

// 정답지 - 기본 정렬 함수
let sorted = inputCases.map { $0.sorted() }

// 직접 만든 정렬 함수 적용
for idx in inputCases.indices {
  selectionSort(input: &inputCases[idx])
}

// 결과 비교. 정렬 완료가 나오면 성공
func testCases() {
  inputCases.enumerated().forEach { idx, arr in
    guard sorted[idx] != arr else { return }
    print("케이스 \(idx + 1) 정렬 실패 - \(inputCases[idx])")
  }
}

let isSuccess = sorted == inputCases
isSuccess ? print("정렬 완료") : testCases()

```

## ***Insertion Sort***

- **배열을 순회하며 현재 위치와 그보다 작은 인덱스의 값들을 비교해 적절한 위치에 삽입해 나가는 방식**
- **O(n^2) 정렬 알고리즘 삼대장 (버블, 선택, 삽입) 중 일반적으로 가장 빠른 알고리즘시간복잡도 - O(n2)**

[https://t1.daumcdn.net/cfile/tistory/99CE983C5C4851F40D](https://t1.daumcdn.net/cfile/tistory/99CE983C5C4851F40D)

![Algorithms%20da10ce65ea6c406a88c9ebb0120a2cb2/_2020-06-30__4.35.18.png](Algorithms%20da10ce65ea6c406a88c9ebb0120a2cb2/_2020-06-30__4.35.18.png)

- Example

```swift
var inputCases = [
  [],
  [1],
  [1, 2, 3, 5, 6, 7, 9, 10, 14],
  [1, 1, 2, 2, 3, 3, 1, 2, 3],
  [14, 10, 9, 7, 6, 5, 3, 2, 1],
  [5, 6, 1, 3, 10, 2, 7, 14, 9],
  Array(1...10).map { _ in Int.random(in: 1...999) },
]

// 인서트 정렬 함수 

func insertionSort(input: inout [Int]) {
  guard !input.isEmpty else { return }
  
  for idx in 1..<input.count {
    let currentValue = input[idx]
    var insertionIdx = idx
    
    for comparisonIdx in (0..<idx).reversed() {
      guard currentValue < input[comparisonIdx] else { break }
      input[comparisonIdx + 1] = input[comparisonIdx]
      insertionIdx = comparisonIdx
    }
    
    input[insertionIdx] = currentValue
//    print("\(idx) :", input)
  }
}

// 실행확인

// 정답지 - 기본 정렬 함수
let sorted = inputCases.map { $0.sorted() }

// 직접 만든 정렬 함수 적용
for idx in inputCases.indices {
  insertionSort(input: &inputCases[idx])
}

// 결과 비교. 정렬 완료가 나오면 성공
func testCases() {
  inputCases.enumerated().forEach { idx, arr in
    guard sorted[idx] != arr else { return }
    print("케이스 \(idx + 1) 정렬 실패 - \(inputCases[idx])")
  }
}
let isSuccess = sorted == inputCases
isSuccess ? print("정렬 완료") : testCases()
```

## ***Quick Sort***

- **기준이 되는 pivot 을 선정해 이를 기준으로 작은 값은 좌측, 큰 값을 우측에 재배치하는 것을 반복하는 방식**
- **분할 정복 방식 (Divide and Conquer) 사용**
- **일반적으로 실세계 데이터에 대입했을 때 가장 빠르다고 알려져있고 가장 많이 활용되는 정렬 알고리즘**
- **시간복잡도 - 평균적으로 O(nLogn), 최악의 경우 O(n2)**

![Algorithms%20da10ce65ea6c406a88c9ebb0120a2cb2/_2020-06-30__4.53.26.png](Algorithms%20da10ce65ea6c406a88c9ebb0120a2cb2/_2020-06-30__4.53.26.png)

![Algorithms%20da10ce65ea6c406a88c9ebb0120a2cb2/_2020-06-30__4.53.42.png](Algorithms%20da10ce65ea6c406a88c9ebb0120a2cb2/_2020-06-30__4.53.42.png)

![Algorithms%20da10ce65ea6c406a88c9ebb0120a2cb2/_2020-06-30__4.54.00.png](Algorithms%20da10ce65ea6c406a88c9ebb0120a2cb2/_2020-06-30__4.54.00.png)

![https://thumbs.gfycat.com/RectangularHarmlessGalapagosmockingbird-size_restricted.gif](https://thumbs.gfycat.com/RectangularHarmlessGalapagosmockingbird-size_restricted.gif)

[https://t1.daumcdn.net/cfile/tistory/241BA347557A7E291E](https://t1.daumcdn.net/cfile/tistory/241BA347557A7E291E)

## ***Merge Sort***

- **재귀함수를 통해 큰 데이터를 더 이상 나눌 수 없는 단위까지 잘개 쪼갠 후 다시 합치면서(merge) 정렬하는 방식**
- **병합된 부분은 이미 정렬되어 있으므로 전부 비교하지 않아도 정렬 가능**
- **분할 정복 방식 (Divide and Conquer) 의 대표적인 케이스 중 하나**
- **데이터를 분해하고 합치는 작업에 필요한 (데이터 크기와 동일한) 추가 메모리 공간 필요**
- **평균적으로 퀵 정렬에 비해 느리지만 퀵이나 힙과 달리 Stable 한 정렬이며 데이터 상태에 영향을 거의 받지 않음**
- **시간복잡도 - 항상 O(nLogn)**

![Algorithms%20da10ce65ea6c406a88c9ebb0120a2cb2/_2020-06-30__5.08.47.png](Algorithms%20da10ce65ea6c406a88c9ebb0120a2cb2/_2020-06-30__5.08.47.png)



## ***Comparison***

![https://i.gifer.com/Bnha.gif](https://i.gifer.com/Bnha.gif)

## ***Swift Sorting Algorithm***

[ Swift 기본 정렬 알고리즘 ] - Intro Sort (Insertion Sort + Quick Sort + Heap Sort) 

**􏰀 - Timsort (Insertion Sort + Merge Sort)** 

**[ 참고 링크 ]** 

**- https://github.com/apple/swift/blob/master/stdlib/public/core/Sort.swift  - https://github.com/apple/swift/commit/e5c1567957e8bd159beb7ef21f5fbb25bebf34e8#diff-
d8682241e4e146bde02399e918c36837**