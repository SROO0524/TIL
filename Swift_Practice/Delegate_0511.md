![스크린샷 2020-05-12 오후 2.47.29](/Users/kimmidum/Library/Application Support/typora-user-images/스크린샷 2020-05-12 오후 2.47.29.png)



위임하는 객체 : UIView  (껍데기만 가지고 있을뿐 실제 실행은 위임 받는 객체가함)

위임받는 객체 : ViewController (실제 실행 함수를 가지고 있음)

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

//위임 받는 객체 (실제 기능을 구현할 수 있는 객체 )

class ViewController: UIviewController, CustomViewDelegate {
  @IBOulet weak var customView : CustomView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    customView.delegate = self // Self 라고 꼭 써줘야 UIView 에 실제로 반영됨. 
  }
  
  func colorForBackground(_ newColor: UIColor?) -> UIColor {
    guard let color
  }
}

```

