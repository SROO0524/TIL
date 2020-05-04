# Type Casting 

## Type Check 

> 타입 캐스팅은 is 와 as 로 구현되어 있고, 인스턴스의 타입을 확인하거나 자신을 다른 타입의 인스턴스 인것 처럼 사용될수 있다. 

* **타입 확인 - type(:of )**

> ```swift
> type(of: 1)
> type(of: 2.0)
> type(of: "3")
> 
> 
> // Any
> let anyArr: [Any] = [1, 2.0, "3"]
> type(of: anyArr[0])
> type(of: anyArr[1])
> type(of: anyArr[2])
> // 컴파일 타입
> // 런타입
> anyArr[1].self
> 
> // Generic : 함수에 정의 할때 소괄호 앞에 <> 가 들어가는 문자와 파라미터 값에 들어가는 게 같게 쓰임. T가 어떤 타입일지 모르지만 아래에서 정의됨.
> 
> func printGenericInfo<T>(_ value: T) {
>   let types = type(of: value)
>   print("'\(value)' of type '\(types)'")
> }
> printGenericInfo(1)
> printGenericInfo(2.0)
> printGenericInfo("3")
> 
> ```
>
> * **타입비교 - is ** : 어떤 변수의 자료형을 모를 떄 자료형을 확인 할 수 있도록 제공되는 연산자.
>
> ```swift
> /***************************************************
>  객체 is 객체의 타입 -> Bool (true or false)
>  ***************************************************/
> 
> let number = 1
> number == 1    // 값 비교
> number is Int  // 타입 비교 int 타입이면 true 아니면 false
> 
> 
> let strArr = ["A", "B", "C"]
> 
> if strArr[0] is String {
>   "String"
> } else {
>   "Something else"
> }
> 
> if strArr[0] is Int {
>     "Int"
> }
> 
> 
> 
> let someAnyArr: [Any] = [1, 2.0, "3"]
> 
> for data in someAnyArr {
>   if data is Int {
>     print("Int type data :", data)
>   } else if data is Double {
>     print("Double type data : ", data)
>   } else {
>     print("String type data : ", data)
>   }
> }
>  
> 
> ```
>
> 







## [ 과제 ]



1. func addTwoValues(a: Int, b: Int) -> Int {  return a + b } let task1: Any = addTwoValues(a: 2, b: 3) 위와 같이 정의된 변수 task1이 있을 때 다음의 더하기 연산이 제대로 동작하도록 할 것 task1 + task1  [ 도전 과제 ] 1. let task2: Any = addTwoValues 과제 1번에 이어 이번에는 위와 같이 정의된 task2 변수에 대해 두 변수의 더하기 연산이 제대로 동작하도록 할 것 (addTwoValues의 각 파라미터에는 원하는 값 입력) task2 + task2  





2. class Car {} let values: [Any] = [  1,  99.9,  (2.0, Double.pi),  Car(),  { (str: String) -> Int in str.count } ] 위 values 변수의 각 값을 switch 문과 타입캐스팅을 이용해 출력하기 for value in values {  switch value {    // Code 구현  } }

