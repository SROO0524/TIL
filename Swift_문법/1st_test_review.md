# 1st Test Review

> 못푼문제 위주로 리뷰

1. Swift 3가지 다른 반복문 방식별로 각각 1부터 10까지 값을 더한 결과를 출력하는 코드 작성

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

         