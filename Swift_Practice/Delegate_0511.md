

# Delegate

* 객체 지향 프로그래밍에서 하나의 객체가 모든일을 처리 하는 것이 아니라 처리해야 할 일 중 일부를 다른 객체에 넘기는 것을 말한다. 
* 효율적인 면에서 중요한 역할을 하기 때문에 큰 프로젝트에서 유용하게 사용된다.



![스크린샷 2020-05-12 오후 2.47.29](/Users/kimmidum/Library/Application Support/typora-user-images/스크린샷 2020-05-12 오후 2.47.29.png)



* **위임하는 객체 :** UIView  (껍데기만 가지고 있을뿐 실제 실행은 위임 받는 객체가함)

* **위임받는 객체 :** ViewController (실제 실행 함수를 가지고 있음)

```swift
// 위임 하는 객체 (스토리보드 상에 만든 껍데기만 있는 UIView 라고 생각하면됨. 실제 기능은 가지고 있지 않음.)

protocol CustomViewDelegate : Class { 
	func colorForBackgrund(_ mewColor: UIColor?) -> UIColor
}

final class CustomView: UIView {
  weak var dalegate: CustonViewDelegate?
  
  override var background : UIColor? {
    get {return super.backgroundColor}
		set {
      let color = delegate?.colorForBackground(newValue)
      let newColor = color ?? newValue ?? .gray
      super.backgroundColor = newColor
      print("새로 변경될 색은:", newColor)
    }  
  }
}

//위임 받는 객체 (실제로 구현할 수 있는 기능을 만들어 주는것)

class ViewController: UIviewController, CustomViewDelegate {
  @IBOulet weak var customView : CustomView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    customView.delegate = self // Self 라고 꼭 써줘야 UIView 에 실제로 반영됨. 
  }
  
  func colorForBackground(_ newColor: UIColor?) -> UIColor {
    guard let color = newColor else {return .gray}
    return color == .green ? .blue : color
  }
}

```







# 과제 

* Delegate 를 이용하여 FirstVC의 TextField 에 입력한 값을 SecondVC 의 Label에 표시하기

1-1. delegate 프로토콜과 프로퍼티를 firstVC 에 정의하는 방법으로 구현

   e.g. class FirstVC { weak var delegate: ~~~ }

1-2. delegate 프로토콜과 프로퍼티를 secondVC 에 정의하는 방법으로 구현

   e.g. class SecondVC { weak var delegate: ~~~ }





### 1-1 delegate 프로토콜과 프로퍼티를 firstVC 에 정의하는 방법으로 구현

1. ViewController를 스토리보드에 2개 만들고,UIViewController 2개 구현 한 후  FirstVC에는 텍스트 필드 만들고, 두SecondVC 에는 Label 올린 후 @IBOulet 으로 연결해 둔다.

2. ViewController.swift에 아래와 같이 코드를 구현한다. 

   ```swift
   import UIKit
   
   protocol ViewControllerDelegate : class {
       func textChange(_ newWord: String)
   }
   
   // protocol을 통해 메소드를 정의 해준다. func textChang는 실제 구현할 함수를 미리 정의.
   
   
   class ViewController: UIViewController, UITextFieldDelegate {
       weak var delegate : ViewControllerDelegate?
     // ViewControllerDelegate 타입의 delegate 변수 선언. (여기서는 아직 ViewControllerDelegate를 채택해서 쓰겠다고 하지 않은 상태임!)
       
       @IBOutlet weak var textField: UITextField!
     
    // FirstVC 에 있는 textField를 @IBOulet으로 연결
       
       override func viewDidLoad() {
           super.viewDidLoad()
           textField.delegate = self
           
       }
   
       func textFieldShouldReturn(_ textField: UITextField) -> Bool {
           textField.resignFirstResponder()
           return true
       }
       
       func textFieldDidEndEditing(_ textField: UITextField) {
           guard let text = textField.text else {
               return
           }; delegate?.textChange(text)
       }
       
       func secondTextChange(_ secondNewWord: String) {
           secondLabel.text = secondNewWord
       }
    
   //    @IBAction func unwindToFirstVC(_ segue: UIStoryboard) {
   //    }
       
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           super.prepare(for: segue, sender: sender)
           
           guard let secondVC = segue.destination as? SecondViewController else { return }
           secondVC.delegate = self
           
       }
       
       @IBAction func unwindToFirst(_ unwindSegue: UIStoryboardSegue) {
           let sourceViewController = unwindSegue.source
           
       }
   }
   
   
   ```

   