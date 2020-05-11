## Segue 를 이용한 화면전환                                        

###  *<u>1. 화면 A -> B로 이동하는 버튼과 기능 구현 후 B -> A로 가는 버튼과 기능도 구현하기.</u>* 



1)  스토리보드에 ViewController 를 두개 만든 후 각 화면에 버튼 하나씩 배치.

![Segue_화면전환기초_1](https://github.com/SROO0524/TIL/blob/master/Image/Segue_화면전환기초_1.png)

2) 스토리보드의 화면 B와 연결되는 새로운 ViewController.swift 생성

![Segue_화면전환기초_2](https://github.com/SROO0524/TIL/blob/master/Image/Segue_화면전환기초_2.png)

​		

v 3) 스토리보드 화면 A에 있는 Button 을 화면 B로 Control 클릭후 끌어서 Segue를 Show 로 연결

4)  화면 B로 이동 후 다시 화면 A로 이동하는 버튼(Go to A)을 화면 B에 생성

5) 화면B의 Go to A 버튼을 누르면 다시 A로 돌아오는 기능을 구현하기 위해 ViewController.swift에 @IBAction 을  생성.

```swift
 // ViewController

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func unwindToFirstViewController(_ unwindSegue: UIStoryboardSegue) {
    
    }   
}

```

6) Unwind Segue 생성 후 화면 B에 있는 Button을 Ctrl 을 누른 후 뷰컨트롤러 위쪽에 있는 Exit 버튼에 가져다 댄 후 ViewController.swift에서 생성한 unwind @IBAction에 연결시킴. 연결여부 확인은 아래와 같이 함 ( Unwind 코드는 돌아가려는 화면의 컨트롤러에 코드를 작성해준다. )

![Segue_화면전환기초_3](https://github.com/SROO0524/TIL/blob/master/Image/Segue_화면전환기초_3.png)



###  *<u>2. 화면 A에 있는 버튼을 누르면 버튼에 쓰인  텍스트가 화면 B 의  Label에 그대로 출력되도록 구현</u>* 



1) 화면 A 의 ViewController 에 prepare 함수 사용한 코드 작성

* prepare 메소드 : 화면전환시 필요한 기능을 넣는 함수

```swift
import UIKit

class FirstViewCOntroller : UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  override func prepare (for segue : UIStoryboardSegue, sender : Any?) {
    super.prepare(for : segue , sender: sender)
    guard let secondVC = segue.destination as? SecondViewController else {
      return
    } // guard let 을 사용한 이유? destination 이 SecondVC 가 맞는지 체크하고 아래의 조건을 실행.(destination이 SecondVC 일수도 있고 아닐 수도 있으므로!)
    
    
    segue.destination // 목적지 SecondVC
    segue.source // 출발지 FirstVC
    segue.identifire // Card, FullScreen
    
    if segue.identifier == "Card" {
      secondVC.text = "Card"
    } else {
      secondVC.text = "FullScreen"
    }
  }
  
  // 스토리 보드를 이용해 값은 전달시에는 SecondVC 내에 @IBOulet만으로는 값이 생성되지 않기 때문에 하단에 별도의 프로퍼티(SecondVC : var text = "" )를 만들어서 접근.
/* @IBOulet private func button(_sender: Any) {
   let secondVC = SecondViewController()
   secondVC.label.text = "dfdfd"
   present(secondVC,animated : true)
  
}
 >> 코드로 작성시 직접 secondView 에 접근하여 값을 받아 올수 있음./
  
  
}

```



2) SecondViewController 에 아래와 같은 코드 작성 

```swift
import UIKit

class SecondViewController: UIVIewController {
  
  @IBOulet weak var label : UILabel!
  //let my label = UIlabel() >> 코드로 만들때 사용.(코드 사용시 위의 뷰컨트롤러에도 @IBAction으로 연결하여 써야함..!) 
  var text = ""
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    label.text = text
  }
  
}
```

