# Conditional Statements

## if Statements

> * **if 구문** 
>
> ```swift
> if <#condition#> {
>    <#code#>
>  }
>  
> //condition 은 Bool 값 (true, false)
> 
> 
> //예시
> 
> var temperatureInFahrenheit = 30
> 
> if temperatureInFahrenheit <= 32 {
>   print("It's very cold. Consider wearing a scarf.")
>   
> 
> // 32도 이상의 경우 It's very cold. Consider wearing a scarf. 출력
> 
> 
> 
> 
> 
> ```
>
> * **if else 구문**
>
> ```swift
>  if <#condition#> {
>    <#statements#>
>  } else {
>    <#statements#>
>  }
> 
> // 예시 1 (if - else)
> 
> temperatureInFahrenheit = 40
> 
> if temperatureInFahrenheit <= 32 {
>   print("It's very cold. Consider wearing a scarf.")
> } else {
>   print("It's not that cold. Wear a t-shirt.")
>   
> 
> // 예시 2 (if - else if - else )
> 
> temperatureInFahrenheit = 90
> 
> if temperatureInFahrenheit <= 32 {
>   print("It's very cold. Consider wearing a scarf.")
> } else if temperatureInFahrenheit >= 86 {
>   print("It's really warm. Don't forget to wear sunscreen.")
> } else {
>   print("It's not that cold. Wear a t-shirt.")
> 
>   
> // 예시 3 (if - else if)
> 
> temperatureInFahrenheit = 72
> 
> if temperatureInFahrenheit <= 32 {
>   print("It's very cold. Consider wearing a scarf.")
> } else if temperatureInFahrenheit >= 86 {
>   print("It's really warm. Don't forget to wear sunscreen.")
> }
> ```
>
> * **true && true = true / true && false = false**
>
> ```swift
> // Logical And Operator
> if (temperatureInFahrenheit > 0) && (temperatureInFahrenheit % 2 == 0) {
> }
> 
> // Logical And Operator => 콤마 == &&
> if temperatureInFahrenheit > 0, temperatureInFahrenheit % 2 == 0 {
> }
> 
> // Logical Or Operator
> if temperatureInFahrenheit > 0 || temperatureInFahrenheit % 2 == 0 {
> }
> 
> ```
>
> * **Question 1.** if ~ else if  / if 문을 2개 하는 것과 차이점?
>
>   * if 문 1개를 쓸경우 출력 값은 1개 / if 문 2개 쓸경우 출력 값 2개 
>
>   ```swift
>   var number = 9
>   if number < 10 {
>     print("10보다 작다")
>   } else if number < 20 {
>     print("20보다 작다")
>   }
>   
>   if number < 10 {
>     print("10보다 작다")
>   }
>   if number < 20 {
>     print("20보다 작다")
>   }
>   ```
>
> * **Question 2.**  if ~ else if 만 있을 때 else 없이 동일하게 처리하려면?
>
>   * else 를 else if 로 변경하면 됨
>
>   ```swift
>   number = 25
>   
>   if number < 10 {
>       print("10보다 작다")
>   } else if number < 20 {
>       print("20보다 작다")
>   } else {
>       print("20과 같거나 크다")
>   }
>   
>   
>   if number < 10 {
>     print("10보다 작다")
>   } else if number < 20 {
>     print("20보다 작다")
>   } else if number >= 20 {
>     print("20과 같거나 크다")
>   }
>   ```



## Swich Statements

```swift

 switch <#value#> {
 case <#value 1#>:
     <#respond to value 1#>
 case <#value 2#>,
      <#value 3#>:
     <#respond to value 2 or 3#>
 default:
     <#otherwise, do something else#>
 }

/* 
 - switch 문은 가능한 모든 사례를 반드시 다루어야 함 (Switch must be exhaustive)
 - 반드시 실행되는 값이 있어야함.
*/
 
```

> * **case 1 :** 모든 경우의 수가 구문 내에 없을 경우 default 값을 꼭 써야함.
>
> ```swift
> let alphabet: Character = "a"
> 
> switch alphabet {
> case "a":
>   print("The first letter of the alphabet")
> case "z":
>   print("The last letter of the alphabet")
> default:
>   break
> //  print("Some other character")
> }
> ```
>
> * **case 2:** 모든 경우의 수가 구문 내에 있을 경우 (without default case)
>
> ```swift
> let isTrue = true
> type(of: isTrue)
> 
> switch isTrue {
> case true:
>   print("true")
> case false:
>   print("false")
> }
> ```
>
> * **case 3** :  Interval Matching  (범위 안에 있는 숫자 무작위 출력)
>
> ```swift
> let approximateCount = 30
> 
> switch approximateCount {
> case 0...50:
>   print("0 ~ 50")
> case 51...100:
>   print("51 ~ 100")
> default:
>   print("Something else")
> }
> 
> ```
>
> * Question 1 :  아래의 if - else if - else 문을 switch 문으로 바꿔보세요.
>
> ```swift
> if temperatureInFahrenheit <= 32 {
>   print("It's very cold. Consider wearing a scarf.")
> } else if temperatureInFahrenheit >= 86 {
>   print("It's really warm. Don't forget to wear sunscreen.")
> } else {
>   print("It's not that cold. Wear a t-shirt.")
> }
> ```
>
> * Answer
>
> ```swift
> switch temperatureInFahrenheit {
> case ...32:
>     print("It's very cold. Consider wearing a scarf.")
> case 86...:
>     print("It's really warm. Don't forget to wear sunscreen.")
> default:
>     print("It's not that cold. Wear a t-shirt.")
> }
> ```
>
> * **case 3 :** Compound case
>   * if문은 콤마(,)가 And(&&)연산인 것과 반대로 switch문은 콤마(,)가 Or(||) 연산
>
> ```swift
> let someCharacter: Character = "e"
> 
> switch someCharacter {
> case "a", "e", "i", "o", "u":
>   print("\(someCharacter) is a vowel")
> case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
>      "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
>   print("\(someCharacter) is a consonant")
> default:
>   print("\(someCharacter) is not a vowel or a consonant")
> }
> ```
>
> * **Case 4 :** x,y 좌표 
>
>   ```swift
>   let somePoint = (9, 0)
>   
>   switch somePoint {
>   case (let distance, 0), (0, let distance):
>     print("On an axis, \(distance) from the origin")
>   default:
>     print("Not on an axis")
>   }
>   ```
>
>   

