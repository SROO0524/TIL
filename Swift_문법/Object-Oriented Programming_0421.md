# Object Oriented programming 

# 객체지향 프로그래밍



## Programming Paradigm

* 패러다임 **:** 어떤 시대분야에서의 특징적인 사고 방식·인식의 체계,

* 틀 프로그램을 설계하는 방식에 대한 개념 **/** 방법론 
* 프로그래머에게 프로그래밍의 관점을 갖게 해주고 결정하는 역할
* 객체지향프로그래밍은 하나의 패러다임



## Structured / Object-Oriented

> 구조지향적프로그래밍 

* 에츠허르 데이크스트라
* Pascal, C 언어

> 객체지향프로그래밍

* 앨런 케이
* Class, object, Encapsulation, Inheritance, Polymorphism 의 특성을 지님. 
* Simula 67, SmallTalk , C ++ , Java 언어



## Multi Paradigm Language 

> Objective-C :OOP 언어 
>
> Swift : POP 를 지향하는 멀티 패러다임 언어 

* 주요패러다임
  * POP : Protocol-Oriented Promgramming 
  * OOP : Object-Oriented Progmramming
  * FP : Functional Programming



## Object-Oriented Progmramming

> **객체지향 프로그래밍 이란 캡슐화,다형성,상속 을 이용하여 코드 재사용을 증가시키고, 유지보수를 감소시키는 장점을 얻기 위해서 객체들을 연결시켜 프로그래밍 하는 것**

* 언어 또는 기술이 다음 사항들을 직접 지원한다면 객체지향
  * 추상화 : 클래스나 객체를 제공
  * 상속 : 이미 존재하는 것으로부터 새로운 추상화를 만들어 낼 능력을 제공
  * 런타임 다형성 : 수행 시간에 바인딩 할 수 있는 어떠한 폼을 제공

> **단순한 데이터 처리 흐름에서 벗어나 각 역할을 지닌 객체들의 상호작용으로 동작 객체** **:** **데이터** (상태) + **메서드** (행위)
> **최초의** **OOP** **언어** : **Smalltalk / Smalltalk + C —> Objective-C**



![스크린샷 2020-04-21 오후 11.12.01](/Users/kimmidum/Library/Application Support/typora-user-images/스크린샷 2020-04-21 오후 11.12.01.png)



> **Swift_Class** 

![스크린샷 2020-04-21 오후 11.14.21](/Users/kimmidum/Library/Application Support/typora-user-images/스크린샷 2020-04-21 오후 11.14.21.png)

## Free Function / Method 

> **함수 (Function)** : 함수는 특정 작업을 수행하는 " 코드조각". 독립된 기능을 수행하는 단위.
>
> **메소드(Method):** 클래스, 구조체, 열거형에 포함되어있는 "함수"를 메소드라고 부름. 메소드를 다른말로 "클래스 함수"라고도 한다. 



## Object 

> **프로그래머 관점: 객체는 클래스에서 생성된 변수**

> **객체 지향 프로그래밍: 각 객체와 그 객체들간의 관계를 설계하는것**



## Class, Object 

> **[Class]** 

* 추상(abstract) , 표현 대상에 대한 이데아 (형상)

* 이상적인 존재 ( 이미지, 설계도, 틀, 설명서)

  



> **[Object]**

* 실체 (instance), 추상을 실체화한 대상
* 이데아의 모사
* 개별 속성 (func.. 등등)

![스크린샷 2020-04-22 오후 1.09.38](/Users/kimmidum/Library/Application Support/typora-user-images/스크린샷 2020-04-22 오후 1.09.38.png)

![스크린샷 2020-04-22 오후 1.10.44](/Users/kimmidum/Library/Application Support/typora-user-images/스크린샷 2020-04-22 오후 1.10.44.png)



## Create Instance 

> **Objective-C 인스턴스 생성 :** [[ ClassName alloc] init]
>
> **Swift 인스턴스 생성 :** ClassName() 





## OOP 예제

> #### **Class**
>
> ```swift
> class ClassName : SuperClassName,ProtocolName...{
>   propertyList
>   MethodList
> }
> // SuperClass, ProtocolName은 선택적으로 사용. 
> 
> let ObjectName = ClassName()
> objectName.proprertyName
> objectName.functionName()
> 
> //아래는 적용예시 
> 
> class DOg {
>   var color = "white"
>   var height = 30.0
>   var weight = 6.0
>   
>   func sit(){
>     print("sit")
>   }
>   func laydown (){
>     print("laydown")
>   }
> }
> 
> let siroo : Dog = Dog()
> siroo.color // siroo 객체 내 color 호출 
> siroo.color = "Gray"  // siroo 의 객체내 color 값 새로 저장
> siroo.sit() // 함수는 ()를 붙여서 사용. siroo 내 메소드 실행
> 
> //>> 클래스는 같아도 객체로서 서로 다른 속성을 가질 수 이있다. 
> ```



> #### **Class Initialize**
>
> * Class 의 초기화 메서드 
>
>   * **초기화(init)가 불필요한 경우**: 모든 저장 프로퍼티에 초기 값이 설정되어 있음. 
>
>   ```swift
>   class Dog1 {
>     let name = "Tory" // >> 프로퍼티에 초기값이 설정되어있음. 
>     let color = "Brown"
>     
>     func bowwow() {
>       print("Dog1 Bowwow!")
>     }
>   }
>   
>   let tory = Dog1()
>   // let tory = Dog1.init()
>   tory.bowwow()
>   ```
>
>   
>
>   * **초기화(init)가 필요한 경우**: 저장 프로퍼티 중 하나 이상의 초기 값 미설정됨.  
>
>     ```swift
>     //파라미터 없는 경우
>     class Dog2 {
>       let name: String
>       let color: String
>       
>       init() {
>         name = "Tory"
>         color = "Brown"
>       }
>       
>       func bowwow() {
>         print("Dog2 Bowwow!")
>       }
>     }
>     
>     let tory2 = Dog2()
>     tory2.bowwow()
>     
>     
>     //파라미터를 통해 설정하는경우
>     
>     class Dog3 {
>       let name: String
>       let color: String
>     
>       init(name: String) {
>         self.name = name
>         color = "Brown"
>       }
>       init(name: String, color: String) {
>         self.name = name
>         self.color = color
>       }
>       
>       func bowwow() {
>         print("Dog3 Bowwow!")
>       }
>     }
>     
>     var tory3 = Dog3(name: "Tory")
>     var tory4 = Dog3(name: "Tory", color: "White")
>     
>     tory3.name
>     tory3.color
>     
>     tory4.name
>     tory4.color
>     
>     
>     ```



> #### **Property**
>
> * **Stored Property 저장 프로퍼티**
>
>   * Class/structure은 사용가능. Enumeration 은 사용불가.
>
>   * 상수(constant)와 변수(variable)값을 인스턴스의 일부로 저장.
>
>     ```swift
>     class StoredProperty {
>       var width = 0.0
>       var height = 0.0
>     }
>     
>     let stored = StoredProperty() // 인스턴스값이 있다면 let 으로 선언할 경우 아래 속성 변경 불가.
>     stored.width = 123
>     stored.height = 456
>     stored.width
>     stored.height
>     ```
>
> * **Lazy Stored Property 지연 저장 프로퍼티**
>
>   * 초기값이 인스턴스의 생성이 완료될때 까지 알 수 없는 외부 요인에 의존할때
>
>   > 쉽게 말해 값이 사용되기 전까지 값이 계산되지 않는 프로퍼티
>
>   * 초기값이 복잡하거나 계산 비용이 많이 드는 설정을 필요로 할때
>
>   * 필요한 경우가 제한적일때
>
>   * 클래스와 구조체에서 사용. 열거형은 사용불가
>
>     ```swift
>     class BasicStoredProperty {
>       var width = 10.0
>       var height = 20.0
>       
>       var area = 200.0
>     //  var area = self.width * self.height
>     }
>     
>     let basicStored = BasicStoredProperty()
>     basicStored.area
>     basicStored.width = 30
>     basicStored.area
>     
>     
>     
>     class LazyStoredProperty {
>       var width = 10.0
>       var height = 20.0 // 이와 같은 속성은 초기 init 메소드를 사용해서 바로 초기화 하여 사용.
>       
>       // 1. 외부 요인이나 다른 설정에 기반
>     //  var area = self.width * self.height
>       lazy var area = width * height // 지연저장을 하게되면 init 메소드를 사용하지 않고 실제로 area 라는 값이 호출이 될때 초기화되어 새로운 값으로 출력하게됨.
>       
>       // 2. 계산 비용이 많이 드는 상황
>     //  var hardWork = "실행하면 약 10초 이상 걸려야 하는 작업"
>       
>       // 3. 필요한 경우가 제한적인 상황
>     //  func ifStatement() {
>     //    if true {   // 5%
>     //      print(area)
>     //    } else {    // 95%
>     //      print(width)
>     //    }
>     //  } >> 95% 로 쓰이는 경우는 기본 세팅해두고 5% 로 쓰이는 것들은 실제 필요할때만 쓰이도록 지연 저장 프로퍼티로 지정하여 사용.
>     }
>     
>     let lazyStored = LazyStoredProperty()
>     lazyStored.width = 30
>     lazyStored.area // area 라고 호출하는 순간 width의 값이 초기화되어 새로운 값으로 출력이됨. 
>     
>     
>     // 순서 주의 >> 반드시 수정하려는 값을 먼저 리스팅 한 후 호출.
>     let lazyStored1 = LazyStoredProperty()
>     lazyStored1.area // 초기화 되지 않고 초기값이 그대로 호출된다. 
>     lazyStored1.width = 30
>     lazyStored1.area // 이미 저장된 초기값이 호출 
>     
>     
>     
>     //** 주의 **
>     // lazy 쓸때는 반드시 var (변수)의 형태로 써야함.
>     
>     ```
>
>     
>
> * **Computed Property**  연산 프로퍼티
>
>   * 자료를 저장하지 않고 매번 호출 할 때 마다 새로 계산
>
>   * 클래스,구조체, 열거형 모두 사용가능
>
>     ```swift
>     /*
>       var <#variable name#> : <#type#> {
>           get {
>               <#statements#>
>           }
>           set {
>               <#variable name#> = newValue
>           }
>       } 
>     >> get 하나만 사용할때는 생략 가능
>     >> get : 값을 읽을때
>     >> set : 값을 저장할떄
>     
>     
>      */
>     
>     class ComputedProperty {
>       var width = 5.0
>       var height = 5.0
>       
>       lazy var lazyArea = width * height
>       var area: Double {
>         width * height
>       } //>> get 이 생략된 형태. 
>       
>       // Stored + Computed get(read), set(write)
>       private var _koreanWon = 0.0
>       var wonToDollar: Double {
>         get {
>           return _koreanWon / 1136.5
>         }
>         set {
>           // newValue: 새로 들어오는 값
>           _koreanWon = newValue
>         }
>       }
>     }
>     
>     var computed = ComputedProperty()
>     computed.area
>     computed.lazyArea
>     
>     computed.width = 10
>     computed.area
>     computed.lazyArea //>> 위에서 한번 25로 저장이 되어서 그 값을 유지. 
>     
>     computed.lazyArea = 50.0
>     computed.lazyArea
>     
>     computed.width = 20
>     computed.height = 20
>     computed.area
>     computed.lazyArea
>     
>     computed.wonToDollar
>     computed.wonToDollar = 10000
>     computed.wonToDollar
>     
>     
>     ```
>
> * **Property Observer 프로퍼티 감시자.**
>
>   * 클래스/ 구조체 에서 사용 가능하며, 열거형에서는 사용불가. 
>
>     ```swift
>      /*var <#variable name#>: <#type#> = <#value#> {
>          willSet {
>              <#statements#>
>          }
>          didSet {
>              <#statements#>
>          }
>      } 프로퍼티가 변경되는 순간에 어떠한 소스를 실행하라고 지시하는것.*/
>     
>     // willset : 값이 변경되는지 감시 하다가 변경되면 아래의 구문대로 실행
>     // didsetm : 값이 변경 된후 아래의 구문대로 실행
>     
>     class PropertyObserver {
>       var height = 0.0
>       
>       var width = 0.0 {
>         willSet {
>           print("willSet :", width, "->", newValue)
>           // width = 0.0,  newValue = 50.0
>         }
>         
>         // 변경되는 시점  willSet <-> didSet 중간
>         
>         didSet {
>           height = width / 2
>           print("didSet :", oldValue, "->", width)
>           // oldValue = 0.0,  width = 50.0
>         }
>       }
>     }
>     
>     var obs = PropertyObserver()
>     obs.height = 50
>     obs.width = 50
>     obs.height = 100
>     obs.height
>     
>     
>     ```
>
> * **Type Property** (타입 프로퍼티)
>
>   * 지연 초기화의 성격을 가진다. 
>
>   * 클래스/구조체/열거형 모두에서 사용 가능하다. 
>
>     ```swift
>     /*
>      선언 - static let(var) <#propertyName#>: <#Type#>
>            class var <#propertyName#>: <#Type#> { return <#code#> }
>      사용 - <#TypeName#>.<#propertyName#>
>      
>      static: override 불가
>      class: 클래스에서만 사용 가능하고 computed property 형태로 사용. 서브클래스에서 override 가능
>      */
>     
>     print("\n---------- [ Type Property ] ----------\n")
>     
>     class TypeProperty {
>       static var unit: String = "cm"
>       var width = 5.0
>     }
>     
>     let square = TypeProperty()
>     square.width
>     
>     let square1 = TypeProperty()
>     square1.width = 10.0
>     square1.width
>     
>     TypeProperty.unit
>     print("\(square.width) \(TypeProperty.unit)")
>     print("\(square1.width) \(TypeProperty.unit)")
>     
>     TypeProperty.unit = "m"
>     print("\(square.width) \(TypeProperty.unit)")
>     print("\(square1.width) \(TypeProperty.unit)")
>     
>     
>     
>     ```



## Equatable , Identical 연산자

> * Equatable : 동등연산자
>   * 단순히 값이 같은지 비교. 
>
> ```swift
> 1 == 1
> 2 == 1
> "ABC" == "ABC"
> 
> 
> class Person {
>   let name = "이순신"
>   let age = 30
> }
> 
> let person1 = Person()
> let person2 = Person()
> 
> //person1 == "이순신"    // error
> //person1 == person2   // error - class 내에 있는 상수중 어떤것을 비교해야하는지 알려주지 않아 오류남.
> 
> 
> 
> ```

> * **Equatable Protocol 두 연산자를 비교하기 위한 프로토콜.** 

```swift
class User: Equatable {
  var name = "이순신"
  let age = 30
  
  static func ==(lhs: User, rhs: User) -> Bool {
    return lhs.name == rhs.name
  }
}

let user1 = User()
var user2 = User()
user1 == user2

```



> * Identical 
>
>   ```swift
>   user1.name
>   user2.name
>   user1 == user2
>   user1 === user2
>   
>   //>> === 은 완전히 똑같은지 묻는것. 메모리 타입까지 동일한지 비교. / == 은 단순히 값만 동일한지 비교.
>   
>   
>   /*
>    Value Type => struct, enum  (Stack 에 저장)
>    Reference Type => class  (Heap 에 저장)
>    */
>   
>   /*
>    let x = 5
>    let y = User()
>    let z = User()
>    
>              x   y        z
>    [ Stack ] | 5 | 0x5F17 | 0x2C90 |
>                      |        |
>                      ---------|----------
>              ------------------         |
>              |                          |
>            0x2C90          0x5F16     0x5F17
>    [ Heap ]  | z's user data | SomeData | y's user data |
>    
>    --- in Memory ---
>    값 타입(Value Type) - Stack
>    참조 타입(Reference Type) - Stack -> Heap
>    */
>   
>   
>   user1.name = "홍길동"
>   user1.name   //
>   user2.name   //
>   user1 == user2
>   user1 === user2
>   
>   
>   user2 = user1
>   
>   // user1 -> 0x00001  <- user2       0x00002
>   
>   //user1.name
>   //user2.name
>   //user1 == user2    //
>   //user1 === user2   //
>   //
>   //user2.name = "세종대왕"
>   //user2.name
>   //user1.name
>   
>   
>   /*
>    Identity Operators
>    === : 두 상수 또는 변수가 동일한 인스턴스를 가르키는 경우 true 반환
>    */ 
>   
>   //1 === 1
>   //"A" === "A"
>   
>   // 5 == 5
>   
>   
>   ```



## OOP 연습문제 풀이 링크  













## Access Control 접근제한자 

> **다른모듈의 코드 또는 다른 소스 파일 등으로부터 접근을 제한하는것**
>
> **세부 구현 내용을 숨기고 접근 할 수 있는 인터페이스 지정가능**

* 모듈 ( Module)
  * import 를 통해 다른 모듈로 부터 불러들일 수 있는 하나의 코드 배포 단위
  * Library / Framework / Application 등 
* 소스파일 (Source File)
  * 모듈 내에 포함된 각각의 swift 소스 코드 파일



## Access Levels

> **Swift 에서는 5가지의 다른 접근 레벨 제공**
>
> **open(가장 개방적) > public > internal(기본레벨) > fileprivate > private (가장 제한적)**
>
> 1. **Command Line Tool 로 체크**
>
> 2. **UIViewController, Int 등 애플 프레임워크의 접근 제한자 확인**

![스크린샷 2020-04-21 오후 11.41.53](/Users/kimmidum/Library/Application Support/typora-user-images/스크린샷 2020-04-21 오후 11.41.53.png)

### **open**

가장 개방된 접근 한정자로써 소속 모듈 또는 소속 모듈을 import하는 모든 모듈에서 class와 class 멤버에 접근할 수 있으며 open class를 상속 받아 sub class를 생성하거나 메서드를 override 할 수 있다. 간단히 이야기 하자면 다른 언어에서의 public과 유사하다.

```swift
open class SomeOpenClass {
  open var name = "name"
  public var age = 20
}

let someOpenClass = SomeOpenClass()
someOpenClass.name
someOpenClass.age
```



### public

**open** 과 동일한 접근을 허용하지만 sub class 생성과 override에 제한이 있다. 소속 모듈 내에서는 sub class 생성과 sub class 내에서의 override가 허용된다. 이 제한은 프레임워크(모듈)을 제작하는 경우 유용하다. 프레임워크 내에서는 자유롭게 상속 받지만 외부에서는 상속을 받을 수 없기 때문에 확장을 제한할 수 있다.

```swift
public class SomePublicClass {
  public var name = "name"
  var age = 20
}

public class SomePublicClass {
  public var name = "name"
  var age = 20
}
```



### **Internal**

접근 한정자가 지정되지 않은 경우 기본적으로 사용되는 접근 수준이다. 소속 모듈의 모든 소스 파일에서 사용할 수 있지만 모듈 외부에서는 접근 할 수 없다. 

```swift
class SomeInternalClass {
  internal var name = "name"
  internal var age = 0
}

//class SomeInternalClass {
//  var name = "name"
//  var age = 0
//}


let someInternalClass = SomeInternalClass()
someInternalClass.name
someInternalClass.age

```



### fileprivate

소속 소스 파일 내에서만 접근이 가능하다. 

```swift
class SomeFileprivateClass {
  fileprivate var name = "name"
  fileprivate var age = 0
}

let someFileprivateClass = SomeFileprivateClass()
someFileprivateClass.name
someFileprivateClass.age

```



### private

현재 소스를 둘러싸는 선언으로 내에서만 접근 가능하다.

Swift 3에서는 위에서 열거한 5가지 레벨로 접근을 제한하도록 되어 있다. 단, Objective-C 클래스와 메소드는 이제 **open** 상태로 가져온다.

```swift
class SomePrivateClass {
  private var name = "name"
  private var age = 0
  
  func someFunction() {
    print(name)
  }
}

```



## Nesty Types 중첩 타입

아직 정확히 모르겠다.. 





## Getters and Setters

> Getter 와 Setter는 그것이 속하는 변수, 상수 등에 대해 동일한 접근 레벨을 가짐. 이때 Getter 와 Setter에 대해서 각각 다른 접근 제한자 설정가능.

* Setter 설정.

  ```swift
  class TrackedString {
  //  var numberOfEdits = 0
  
  //  private var numberOfEdits = 0
    private(set) var numberOfEdits = 0
  
  //  외부에서는 값을 수정 못하지만 내부에서는 값 확인 가능.
      
    var value: String = "" {
      didSet {
        numberOfEdits += 1
      }
    }
  }
  
  
  let trackedString = TrackedString()
  trackedString.numberOfEdits
  trackedString.value = "This string will be tracked."
  trackedString.numberOfEdits
  
  trackedString.value += " This edit will increment numberOfEdits."
  trackedString.numberOfEdits
  
  trackedString.value = "value changed"
  trackedString.numberOfEdits
  
  //trackedString.numberOfEdits = 0
  //trackedString.numberOfEdits
  ```

  

* Getter 와 Sitter에 대해 각각 명시적으로 표현

  ```swift
  public class TrackedString1 {
    internal private(set) var numberOfEdits = 0
    
    public var value: String = "" {
      didSet {
        numberOfEdits += 1
      }
    }
    
    public init() {}
  }
  ```

  



# OOP 의 4대 특징

## Four Primary Concepts

* Abstract (추상화)
* Encapsulation (캡슐화)
  * = Information Hiding (은닉화)
* Inheritance(상속성)
* Polymorphism (다형성)



## Abstraction 추상화

> **대상의 불필요한 부분을 무시하여 복잡성을 줄이고 목적에 집중 할 수 있도록 단순화 시키는것**
>
> **코드의 불필요한 부분을 줄이고 간결하게 만드는것**

```swift
protocol Human {
  var name: String { get }
  var age: Int { get }
  var gender: String { get }
  var height: Double { get }
  
  func sleep()
  func eat()
  func walk()
}

//class User: Human {
//}






protocol Jumpable {
  var canJump: Bool { get set }
  var jumpHeight: Double { get }
}


class Cat: Jumpable {
//  let canJump = true  // get
  var canJump = true  // get set  - > 반드시 var 로 선언해야함.

  private var _jumpHeight = 30.0
  var jumpHeight: Double {
    get { _jumpHeight }
//    set { _jumpHeight = newValue }
  }
}

let cat = Cat()
if cat.canJump {
  print(cat.jumpHeight)
}

```



## Encapsulation 캡슐화 ( = 은닉화)

> **추상화가 디자인 레벨에 해당하는 개념이라면 캡슐화는 구현 레벨에서의 개념 **
>
> * **데이터 캡슐화:** 연관된 상태와 행동을 하나의 단위(객체)로 캡슐화
> * **정보 은닉화 :** 외부에 필요한 것만 알리고 불필요하거나 감출정보는 숨김
>
> 
>
> ![스크린샷 2020-04-22 오후 10.56.45](/Users/kimmidum/Library/Application Support/typora-user-images/스크린샷 2020-04-22 오후 10.56.45.png)

> **객체가 독립적으로 자신의 상태와 역할을 책임지고 수행할 수 있도록 자율성 부여**
>
> **접근제한자를 이용해 데이터를 외부로부터 보호하여 무결성을 강화하고 변화에 유연하게 대응**
>
> **자세히 몰라도 되는 내부 동작방법을 숨기고 사용하는 방법만을 외부로 노출**
>
> ```swift
> class 회사 {
>   let 직원1: 직원 = 직원()
>   let 직원2: 직원 = 직원()
> }
> class 직원 {
>   private func 밤샘() {}
>   private func 코피() {}
>   
>   func 결과물산출() {}
> }
> 
> let company = 회사()
> company.직원1.결과물산출()
> company.직원2.결과물산출()
> 
> // 직원 클래스에서 메소드를 접근제한자를 이용해 데이터의 접근을 막고 필요한 정보만 노출
> 
> 
> 
> 
> /***************************************************
>  Q. 캡슐화 적용해보기
>  - A가 서울에서 부산까지 여행을 가기로 함
>  - A의 현재 위치는 currentLocation 이라는 메서드를 통해서만 확인 가능
>  - 부산으로 이동하는 동작(메서드)을 구현하고 위치의 변경은 이 메서드를 통해서만 가능
>  - 부산까지 이동하는 도중에 다른 일들을 할 수 있지만 A 클래스 외부에서는 자세한 내용은 알거나 직접 건드리지 못 함
>  ***************************************************/
> 
> 
> class A {
>  private var location = "서울"
> 
>     private func dosomething1 (){
>         print("화장실 갔다오기")
>     }
>     private func dosomething2 (){
>         print("핫바 사먹기")
>     }
>     private func dosomething3 (){
>         print("차타기 전에 시루 똥책시키기")
>     }
>     
>   func currentLocation() {
>     print("현재위치는 \(location) 입니다.")
>   }
>   func goToBusan() {
>     print("서울출발")
>     dosomething1()
>     dosomething2()
>     dosomething3()
>     print("부산도착")
>     location = "부산"
>   }
> }
> 
> let a = A()
> a.currentLocation()
> a.goToBusan()
> a.currentLocation()
> 
> 
> 
> 
> 
> 
> 
> /*:
>  ---
>  ### Answer
>  ---
>  */
> 
> 
> class B {
>   private var location = "서울"
>   
>   private func doSomething1() {
>     print("잠시 휴게소에 들려서 딴짓")
>   }
>   private func doSomething2() {
>     print("한숨 자다 가기")
>   }
>   
>   func currentLocation() {
>     print("====")
>     print("현재 위치 :", location)
>     print("====")
>   }
>   
>   func goToBusan() {
>     print("서울을 출발합니다.")
>     doSomething1()
>     doSomething2()
>     print("부산에 도착했습니다.")
>     location = "부산"
>   }
> }
> 
> let b = B()
> b.currentLocation()
> b.goToBusan()
> b.currentLocation()
> 
> 
> 
> /***************************************************
>  > B의 현재 위치 확인 - 부산으로 이동 (이동한다는 사실 외의 일은 모름) - 현재 위치 확인
>  > 선풍기 현재 상태 확인 - 선풍기 풍속 조절 (내부의 일은 모름) - 현재 상태 확인
>  - 두 가지는 동일함. 정보 은닉화의 개념
>  
>  B 라는 사람에 관련된 상태값(프로퍼티), 그리고 그 사람에게 관련된 행동(메서드)만 모아서
>  B 라는 클래스로 저장하는 것
>  - 데이터 캡슐화의 개념
>  ***************************************************/
> 
> 
> 
> ```
>
> 



## Inheritance 상속성

> **하나의 클래스의 특징(부모클래스)을 다른 클래스가 물려받아 그 속성과 기능을 동일하게 사용하는것**
>
> **범용적인 클래스를 작성한 뒤 상속을 이용해 중복되는 속성과 기능을 쉽게 구현가능**
>
> **주요목적: 재사용과 확장**
>
> 

![스크린샷 2020-04-22 오후 11.14.31](/Users/kimmidum/Library/Application Support/typora-user-images/스크린샷 2020-04-22 오후 11.14.31.png)

> **다이아몬드 상속 문제로 인해 언어에 따라 다중 상속을 허용하기도 하고 비허용 하기도함**
>
> **Swift 에서는 다중 상속을 비허용하고 대신 Protocold을 이용하여 유사 기능 구현**

![스크린샷 2020-04-22 오후 11.17.13](/Users/kimmidum/Library/Application Support/typora-user-images/스크린샷 2020-04-22 오후 11.17.13.png)

![스크린샷 2020-04-22 오후 11.17.44](/Users/kimmidum/Library/Application Support/typora-user-images/스크린샷 2020-04-22 오후 11.17.44.png)

> **코드예시**
>
> ```swift
> class Cat {
>   let leg = 4
>   
>   func cry() {
>     print("miaow")
>   }
> }
> 
> let cat = Cat()
> print(cat.leg)
> cat.cry()
> 
> 
> class KoreanShortHair: Cat {
>   let color: String = "black"
> }
> 
> let koshort = KoreanShortHair()
> koshort.leg
> koshort.cry()
> 
> koshort.color
> //cat.color >> 부모클래스에 컬러가 선언되지 않아 오류가남.
> 
> 
> 
> Question
> 
> Person, Student, University Student 클래스 구현하고 관련 속성 및 메서드 구현
> 
> 상속을 하지 않고 각각 개별적으로 만들면 어떻게 구현해야 하는지 확인
> 상속을 적용하면 어떻게 바뀌는지 확인
> 
> 
> 
> class Person1 {
>   let name = "홍길동"
>   let age = 20
>   
>   func eat() {
>     print("eat")
>   }
> }
> 
> 
> //print("\n---------- [ Without Subclassing ] ----------\n")
> 
> //class Student1 {
> //  let name = "홍길동"
> //  let age = 20
> //  let grade = "A"
> //
> //  func eat() {
> //    print("eat")
> //  }
> //  func study() {
> //    print("study")
> //  }
> //}
> 
> //class UniversityStudent1 {
> //  let name = "홍길동"
> //  let age = 20
> //  let grade = "A"
> //  let major = "Computer Science"
> //
> //  func eat() {
> //    print("Eat")
> //  }
> //  func study() {
> //    print("Study")
> //  }
> //  func goMT() {
> //    print("Go membership training")
> //  }
> //}
> 
> 
> //print("\n---------- [ Subclassing ] ----------\n")
> 
> class Student1: Person1 {
>   let grade = "A"
>   
>   func study() {
>     print("study")
>   }
> }
> 
> class UniversityStudent1: Student1 {
>   let major = "Computer Science"
>   
>   func goMT() {
>     print("Go membership training")
>   }
> }
> 
> 
> 
> 
> 
> ```



* Final : 상속을 받게 하기 싫을 때 final을 앞쪽에 써주면 상속을 받지 않게 된다. 

  ```swift
  class Shape {
  }
  
  final class Circle: Shape {
  }
  
  // 앞쪽에 final을 넣으면 다시 상속 받게 된다. 
  
  ```

  

## Polymorohism 다형성

> * **다양한 형태로 나타날 수 있는 능력/ 여러 형태(many shapes)를 가진다는 의미의 그리스어에서 유래**
> *  **동일한 요청에 대해 각각 다른 방식으로 응답할 수 있도록 만드는것**
> * **오버라이딩(상속과 관련)과 오버로딩(상속과 무관)이 있으며 언어에 따라 오버라이딩만 지원 하기도함**

* **오버라이딩(overriding)**

  * 상위 클래스에서 상속받은 메서드를 하위 클래스에서 필요에 따라 재정의 하는것
  * 동일 요청이 객체에 따라 다르게 응답

  ```swift
  class Shape {
    var title = "Shape"
    var color: UIColor
    // 오버라이딩 불가
    final var lineWidth = 3
    
    init(color: UIColor) {
      self.color = color
    }
    func draw() {
      print("draw shape")
    }
  }
  
  let shape = Shape(color: .cyan)
  shape.color
  shape.draw()
  
  
  print("\n---------- [ Rectangle ] ----------\n")
  
  class Rectangle: Shape {
    var cornerRadius: Double
    
    // 저장 프로퍼티 사용불가. X
  //  override var color: UIColor  = .green
    
    // 계산 프로퍼티로 사용해야함. O
    override var color: UIColor {
      get { super.color }
      set { super.color = newValue }
    }
    override var title: String {
  //    get { "Rectangle" }
      get { super.title + " => Rectangle" }
      set { super.title = newValue }
    }
    
    init(color: UIColor, cornerRadius: Double = 10.0) {
      self.cornerRadius = cornerRadius
      super.init(color: color)
    }
  }
  
  // super. 부모 객체의 속성을 사용하고 싶을때
  // self. 자기자신의 속성을 사용하고 싶을때
  
  let rect = Rectangle(color: UIColor.blue)
  rect.color
  rect.color = .yellow
  rect.color
  
  rect.cornerRadius
  rect.lineWidth
  rect.draw()
  
  shape.title
  rect.title
  
  
  
  print("\n---------- [ Triangle ] ----------\n")
  
  class Triangle: Shape {
    override func draw() {
      super.draw()   // <- 부모가 가진 메서드 호출
      print("draw triangle")
    }
  }
  
  let triangle = Triangle(color: .gray)
  triangle.title
  triangle.lineWidth
  triangle.color
  
  triangle.draw()
  
  
  
  /*:
   ---
   ### Question
   - 아래 문제를 상속을 적용해 해결해보기
   ---
   */
  // bark() 메서드를 가진 Dog 클래스를 상속받아 Poodle, Husky, Bulldog 이 서로 다르게 짖도록 구현
  
  class Dog {
    func bark() {
      print("멍멍")
    }
  }
  
  let dog = Dog()
  dog.bark()
  
  class poodle: Dog {
      override func bark() {
          print("왈왈")
      }
  }
  
  //class Husky : Dog() {
  //    override func bark() {
  //        print("bowwow")
  //}
  
  
  
  
  ```

  

* **오버로딩(overloading)**

  * 동일한 이름의 메서드가 매개 변수의 이름, 타입, 개수 등의 차이에 따라 다르게 동작하는 것
  * 동일 요청이 매개 변수에 따라 다르게 응답

  ```swift
  func someFumction(param : Int) {
    print(param)
  }
  
  func someFumction (param : String){
    print(param)
  }
  
  someFunction(param: 10)
  someFumction(param:"10")
  
  
  ----------------------------------
  
  func printParameter() {
    print("No param")
  }
  
  //func printParameter() -> String {   // Error
  //  "No param"
  //}
  
  func printParameter(param: Int) {
    print("Input :", param)
  }
  
  func printParameter(_ param: Int) {
    print("Input :", param)
  }
  
  print("=====")
  printParameter()
  printParameter(param: 1)
  printParameter(1)
  
  
  // ---------
  
  func printParameter(param: String) {
    print("Input :", param)
  }
  
  func printParameter(_ param: String) {
    print("Input :", param)
  }
  
  func printParameter(name param: String) {
    print("Input :", param)
  }
  
  //func printParameter(param name: String) {   // Error
  //  print("Input :", name)
  //}
  
  
  print("=====")
  printParameter(param: "hello")
  printParameter("hello")
  printParameter(name: "Hello")
  
  
  
  /////////
  
  func printParameter(param: String, param1: String) {
    print("Input :", param, param1)
  }
  
  func printParameter(_ param: String, _ param1: String) {
    print("Input :", param, param1)
  }
  
  func printParameter(_ param: String, param1: String) {
    print("Input :", param, param1)
  }
  
  func printParameter(param: String, _ param1: String) {
    print("Input :", param, param1)
  }
  
  
  print("=====")
  printParameter(param: "hello", param1: "world")
  printParameter("hello", "world")
  printParameter("hello", param1: "world")
  printParameter(param: "hello", "world")
  
  
  
  
  
  ```

  







