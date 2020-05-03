# 1st Test Review

> 못푼문제 위주로 리뷰

1. **Swift 3가지 다른 반복문 방식별로 각각 1부터 10까지 값을 더한 결과를 출력하는 코드 작성**

   ```swift
   
   // sum의 변수를 지정해 준뒤 for 문을 돌려야 1~10 까지 더한 결과가 출력됨. 
   
   var sum = 0
   for i in 1...10 {
     sum += i
   }
   sum
   
   
   // while 반복문
   var i = 1
   sum = 0
   while i <= 10 {
     sum += i
     i += 1
   }
   sum
   
   
   // repeat 반복문
   i = 1
   sum = 0
   repeat {
     sum += i
     i += 1
   } while i <= 10
   sum
   ```

   * Loop : For-In / While (while & repeat-while)

     * For - In Loop 

       ```swift
       /*
        for <#item#> in <#items#> {
          <#code#>
        }
        item 에 있는 데이터를 반복해서 꺼내서 아래 조건에 맞는것을 찾는것
        */
       
       //for (int i = 0; i <= 5; i++) {
       //   C 스타일의 for 문
       //}
       
       
       //상황별 예시
       // whild card Pattern 
       
       for _ in 0...3 {
         print("hello")
       }
       
       // chr pattern : 'chr' 단어를 한글자씩 출력되게 하는것. 
       for chr in "Hello" {
         print(chr, terminator: " ")
       }
       print()
       
       let list = ["Swift", "Programming", "Language"]
       for str in list {
         print(str)
       } >> List 에 기재된 순서대로 하나씩 출력
       
       ```

       * while Loops 

         * 조건이 거짓이 될때까지 일련의 명령문 수행
         * 첫번째 반복이 시작되기 전에 반복 횟수를 알지 못할때 많이 사용.
         * While /repeat-while 

         ```swift
         
         *******while 반복문*******
         //false 가 될때까지 명령문 수행.
         
         print("\n---------- [ while ] ----------\n")
         /*
          while <#condition#> {
            <#code#>
          }
         
          
          - 루프를 통과하는 각 패스의 시작 부분에서 조건을 평가
          */
         
         var num = 0
         var sum = 0
         
         while num <= 100 {
           sum += num
           num += 1
         }
         
         sum
         
         
         *******repeat 반복분*******
         /*
          repeat {
            <#code#>
          } while <#condition#>
          
          - 루프를 통과하는 각 패스의 끝 부분에서 조건을 평가
          - 다른 언어에서는 do - while 문으로 많이 사용
          */
         
         
         //예시 
         
         func printMultiplicationTable1(for number: Int) {
           var i = 1x
           repeat {
             print("\(number) * \(i) = \(number * i)")
             i += 1
           } while i <= 9
         }
         
         printMultiplicationTable1(for: 3)
         
         
         
         ```

2. **Array, Set , Dictionary 의 차이점에 대해 설명하고 예시 코드 작성**

   * 차이점

   * Array - ordered collections of values.

      Set - unordered collections of unique values.

      Dictionary - unordered collections of key-value associations.

   * Array 

   ​     \- An ordered, random-access collection.

   ​     \-  주요 특징

    1) 인덱스를 기반으로, 값이 저장된 순서가 있음 (Zero-based Integer Index)

    2) 중복 허용

   * Set

      \- An unordered collection of unique elements.

      \- 주요 특징

      1) Array 처럼 같은 타입을 가진 연관된 값들의 모음

      2) 단, 순서가 없으며 중복 비허용

     

   * Dictionary

      \- A collection whose elements are key-value pairs.

      \- 주요 특징

      1) Key - Value 쌍으로 이루어져 있어, 둘 중 하나만으로 존재하지 않음

      2) Key는 중복 비허용, Value는 중복 허용

      3) 순서 없음

     

3. **Value Type, Reference Type 에 대한 예시와 그 차이점에 대해 설명** 

* **Value type (값 타입)**

   \- struct, enum, tuple

   \- each instance keeps a unique copy of its data

   \- 메모리의 Stack 영역에 데이터가 저장

   \- Copy on Write (지금은 몰라도 무관)

   \- 멀티 스레드 환경에서 유용 (지금은 몰라도 무관)

* **Reference Type(참조타입)**

   \- usually defined as a class (반드시 클래스에만 해당하지는 않음)

   \- instances share a single copy of the data

   \- 메모리의 Stack 영역에 데이터가 담긴 주소를 가르키는 포인터가 저장되고, Heap 영역에 실제 데이터가 저장

