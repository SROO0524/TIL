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



## 상속 관계

```swift
class Human {
  var name: String = "name"
}
class Baby: Human {
  var age: Int = 1
}
class Student: Human {
  var school: String = "school"
}
class UniversityStudent: Student {
  var univName: String = "Univ"
}


/*
    Human
   /     \
 Baby   Student
          |
    UniversityStudent
 */

let student = Student()
//student is Human - true
//student is Baby - false
//student is Student - true

let univStudent = UniversityStudent()
//student is UniversityStudent -  false : 자식 클래스 is 부모 클래스는 false 임!!!
//univStudent is Student -false : 자식 클래스 is 부모 클래스는 false


/*
 자식 클래스 is 부모 클래스  -> true
 부모 클래스 is 자식 클래스  -> false
 >> 부모 클래스가 자식클래스의 상속을 받지는 않는다. 
 */


let babyArr = [Baby()]
type(of: babyArr)


// Q. 그럼 다음 someArr 의 Type 은?
// >> [Human] / 맨 앞의 배열이 타입으로 결정됨. 

let someArr = [Human(), Baby(), UniversityStudent()]
type(of: someArr)


//someArr[0] is Human    // true 
//someArr[0] is Student  // false
//someArr[0] is UniversityStudent  // false
//someArr[0] is Baby     // false
//
//someArr[1] is Human    // true
//someArr[1] is Student  // false 
//someArr[1] is UniversityStudent  // false
//someArr[1] is Baby     // true
//
//someArr[2] is Human    // true
//someArr[2] is Student  // false
//someArr[2] is UniversityStudent  // true
//someArr[2] is Baby     // false 


var human: Human = Student()
type(of: human)
// 이와 같은 타입을 쓰는경우 : 서로 다른 타입이더라도 사용하고 싶은 경우 쓰임.
// 실제 데이터 타입은 Student 임.

// Q. human 변수의 타입, name 속성의 값, school 속성의 값은?
//human.name    //
//human.school  // 에러 : human >> 런타임

// Q. Student의 인스턴스가 저장된 human 변수에 다음과 같이 Baby의 인스턴스를 넣으면?
//human = Baby()
//human = UniversityStudent() 


var james = Student()
james = UniversityStudent()
//james = Baby()    //

// Q. 다음 중 james 가 접근 가능한 속성은 어떤 것들인가
//james.name     // Human 속성 : 부모 클래스 여서 모두 접근가능
//james.age      // Baby 속성 : 접근 불가
//james.school   // Student 속성 : 접근 가능
//james.univName // UniversityStudent 속성 : 접근 불가/ 실제 데이터가 univName 이더라도 이미 universityStudent 타입으로 지정되었기 떄문에 접근 불가.



// Q. 그럼 Student 타입인 james 객체가 univName을 사용할 수 있도록 하려면 뭘 해야 할까요
  
//접근하려면 as 를 이용해서 접근 +.+!! (아래의 경우 처럼 사용하기)
if let james = james as? UniversityStudent{
    james.univName
}
```



## Type Casting

> * **as : 타입 변환이 확실하게 가능한 경우(업캐스팅, 자기 자신 등) 에만 사용 가능. 그 외에는 컴파일 에러**
> * **as? : 강제 타입 변환 시도. 변환이 성공하면 Optional 값을 가지며, 실패 시에는 nil 반환**
> * **as! : 강제 타입 변환 시도. 성공 시 언래핑 된 값을 가지며, 실패 시 런타임 에러 발생**(앱종료)

### Upcasting

* 상속관계에 있는 자식 클래스가 부모 클래스로 형 변환하는것. 

* 업 캐스팅은 항상 성공하며, as 키워드 사용

  * 예시 코드 

  ```swift
  import UIKit
  
  class Shape {
    var color = UIColor.black
    
    func draw() {
      print("draw shape")
    }
  }
  
  class Rectangle: Shape {
    var cornerRadius = 0.0
    override var color: UIColor {
      get { return .white }
      set { }
    }
    
    override func draw() {
      print("draw rect")
    }
  }
  
  class Triangle: Shape {
    override func draw() {
      print("draw triangle")
    }
  }
  
  //  'shape' 클래스 안에 Rectangle 과 Triangle 이 타입을 상속 받고 있음. 
  // Rectangle 에는 cornerRadius 속성을 개별적으로 가지고 있고.
  // Triangle 은 draw 를 오버라이드 하고 있음. 
  
  
  
  //UpCasting 예시 
  
  let rect = Rectangle()
  rect.color  // shape의 속성을 상속받아 white 컬러 반환
  rect.cornerRadius // 0.0 반환 
  
  let t1 = rect as Shape //>> as 를 활용하여 shape 으로 형변환
  let t2 = rect as Rectangle // >> 
  
  (rect as Shape).color // >> white 로 반환됨.
  //(rect as Shape).cornerRadius >> 오류!! shape 에는 Radius 가 없어서 접근이 불가함.  
  
  //(rect as Rectangle).color
  //(rect as Rectangle).cornerRadius >> 오류 발생 (shape 에는 Radius 가 없어서 접근이 불가함.) 
  
  
  
  let upcastedRect: Shape = Rectangle()
  type(of: upcastedRect)   // type : rectangle
  
  
  //upcastedRect.color
  //upcastedRect.cornerRadius >> 에러남. 
  
  //(upcastedRect as Shape).color
  //(upcastedRect as Rectangle).color >> 에러남. as! 로 써야 오류가 안남.
  
  //부모 클래스 타입으로는 항상 변경할 수 있는데, 자식 클래스로 변경할 수는 없는 이유?
  //자식 클래스 타입 <= 부모 크래스 타입
  //자식 클래스 타입 => 부모 크래스 타입
  //
  
  
  ```

  

### Down Casting

> * **형제 클래스나 다른 서브 클래스 등 수퍼 클래스에서 파생된 각종 서브 클래스로의 타입변환 의미**
>
> * **반드시 성공한다는 보장이 없으므로, 옵셔널.  as? 또는 as! 를 사용** 
>
>   * 예시 코드
>
>   ```swift
>   let shapeRect: Shape = Rectangle()
>   var downcastedRect = Rectangle()
>   
>   //downcastedRect = shapeRect // 부모 클래스가 자식 클래스로 다운캐스팅이 어려워서 오류가남. 그래서 타입을 강제로 변환하여야 함! (as!)
>   //downcastedRect = shapeRect as Rectangle
>   
>   //downcastedRect: Rectangle = shapeRect as? Rectangle  //
>   //downcastedRect = shapeRect as! Rectangle  //
>   
>   //as? : 강제 타입 변환 시도. 변환이 성공하면 Optional 값을 가지며, 실패 시에는 nil 반환
>   //as! : 강제 타입 변환 시도. 성공 시 언래핑 된 값을 가지며, 실패 시 런타임 에러 발생
>   
>   
>   
>   //Q. 아래 value 에 대한 Casting 결과는?
>   let value = 1
>   //(value as Float) is Float   // false
>   //(value as? Float) is Float  // false
>   //(value as! Float) is Float  // false (런타임 오류 발생)
>   
>   
>   ```
>
>   



### Type Check Operator

```swift
let shape = Shape()
let rectangle = Rectangle()
let triangle = Triangle()

let list = [shape, rectangle, triangle]
type(of: list)  //

//list 는 shape 타입.



//아래 for 문에 대한 실행 결과는?

for elem in list {
  if elem is Shape {
    print("shape instance")
  } else if elem is Rectangle {
    print("rect instance")
  } else if elem is Triangle {
    print("triangle instance")
  }
}

// 위의 순서로 실행하였을 때 공통된 shape 이 제일 먼저 걸려서 아래 if 문이 제대로 실행되지 않음. >> 이 경우 Rectangle 을 위로 올리면 뒤의 if 문이 정상적으로 실행된다. (아래 수정 코드 확인)


for elem in list {
  if elem is Rectangle {
    print("rect instance")
  } else if elem is shape {
    print("shape instance")
  } else if elem is Triangle {
    print("triangle instance")
  }
}




print("\n---------- [ ] ----------\n")

// let list: [Shape] = [shape, rectangle, triangle]
for element in list  {
  element.draw()
}

```











## [ 과제 ]



1. ```swift
   /*
   func addTwoValues(a: Int, b: Int) -> Int {
     return a + b
   }
   let task1: Any = addTwoValues(a: 2, b: 3)
   
   // 위와 같이 정의된 변수 task1 이 있을때 다음의 더하기 연산이 제대로 동작하도록 할것
   
   task1 + task1
   */
   
   //나의 풀이 
   
   func addTwoValues(a: Int, b: Int) -> Int {
     return a + b 
   }
   
   let task1: Int = addTwoValues(a: 2, b: 3)
   let task2: Int = addTwoValues(a: 5, b: 6)
   
   // 타입을 Int 타입으로 변환하여 연산.
   
   
   // 강사님 풀이 >> 타입 캐스팅 as 를 활용하여 풀이.
   
   func addTwoValues(a: Int, b: Int) -> Int {
     return a + b
   }
   
   let task1: Any = addTwoValues(a: 2, b: 3)
   (task1 as! Int) + (task1 as! Int)
   
   
   
   ```

   





2. ```swift
   [도전과제]
   let task2: Any = addTwoValues
   과제 1번에 이어 이번에는 위와 같이 정의된 task2 변수에 대해
   두 변수의 더하기 연산이 제대로 동작하도록 할 것
   (addTwoValues의 각 파라미터에는 원하는 값 입력)
   
   task2 + task2
   
   
   // 나의 풀이... 생각해보고 풀어보기...
   
   
   ```

3. ```swift
   class Car {}
   let values: [Any] = [
     1,
     99.9,
     (2.0, Double.pi),
     Car(),
     { (str: String) -> Int in str.count }
   ]
   
   위 values 변수의 각 값을 switch 문과 타입캐스팅을 이용해 출력하기
   
   for value in values {
     switch value {
       // Code 구현
     }
   }
   
   // 나의 풀이 >> 생각해보고 풀어보기...
   
   
   // 강사님 풀이 
   
   class Car {}
   let values: [Any] = [
     1,
     99.9,
     (2.0, Double.pi),
     Car(),
     { (str: String) -> Int in str.count }
   ]
   
   for value in values {
     switch value {
     case let integer as Int:    // as를 이용한 방법
       print("Integer :", integer)
     case let double where double is Double:    // where를 이용한 방법
       print("Double :", double)
     case let (x, y) as (Double, Double):
       print("Tuple : (\(x), \(y))")
     case let car as Car:
       print("Car : ", car)
     case let closure as (String) -> Int:
       print("Closure execution result : ", closure("swift"))
     default:
       print("No matching")
     }
   }
   
   
   
   ```

   

