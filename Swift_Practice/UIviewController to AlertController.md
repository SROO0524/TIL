# UIviewController to AlertController

> **Altercontroller 을 이용하지 않고 UIviewcontroller 로 알림창 띄우기**
>
> 1. ScenDelegate.swift 삭제
> 2. AppDelegate.swift 에서 Scene  관련 코드 삭제
> 3. Info.plist 에서 Application Scene Manifest - 눌러서 완전히 삭제 
> 4. 알럿 띄울 ViewController 1개 생성 (SecondViewController)
> 5. FirstViewController 에서 Alert 을 버튼으로 생성/ 라벨로 display 만듬.



## FirstViewController.swift

```swift
import UIKit

class FirstViewController: UIViewController {
  
  var content = "Display" {
    didSet {
      displayLabel.text = content
    }
  }
  
  private let displayLabel = UILabel()
  private let alertButton = UIButton()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    baseUI()
  }
  
  private func baseUI() {
    view.backgroundColor = .white
    
    displayLabel.text = content
    displayLabel.textColor = .white
    displayLabel.textAlignment = .center
    displayLabel.frame.size = CGSize(width: 200, height: 40)
    displayLabel.center = CGPoint(x: view.center.x, y: 200)
    displayLabel.backgroundColor = .black
    view.addSubview(displayLabel)
    
    alertButton.setTitle("Alert", for: .normal)
    alertButton.frame.size = CGSize(width: 200, height: 40)
    alertButton.center = view.center
    alertButton.backgroundColor = .green
    alertButton.addTarget(self, action: #selector(alertButtonAction), for: .touchUpInside)
    view.addSubview(alertButton)
  }
  
  @objc private func alertButtonAction() {
    let secondVC = SecondViewController()
    secondVC.titleLabel.text = "Title"
    secondVC.messageLabel.text = "Message"
    secondVC.modalPresentationStyle = .overFullScreen
    present(secondVC, animated: true
    )
  }
}

```



## SecondViewController.swift

```swift
import UIKit

class SecondViewController: UIViewController {
  
  private let baseView = UIView()
  let titleLabel = UILabel()
  let messageLabel = UILabel()
  private let contentTextField = UITextField()
  private let cancelButton = UIButton()
  private let enterButton = UIButton()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    baseUI()
  }
  
  private func baseUI() {
    view.backgroundColor = UIColor.black.withAlphaComponent(0.3)
    
    let baseWidth = view.frame.width - 100
    let baseHeight = CGFloat(200)
    let itemHeight = CGFloat(50)
    let textFieldSpace = CGFloat(20)
    
    
    baseView.backgroundColor = .white
    baseView.frame.size = CGSize(width: baseWidth, height: baseHeight)
    baseView.center = CGPoint(x: view.center.x, y: 200)
    view.addSubview(baseView)
    
    titleLabel.textAlignment = .center
    titleLabel.frame = CGRect(x: 0, y: 0, width: baseWidth, height: itemHeight)
    baseView.addSubview(titleLabel)
    
    messageLabel.textAlignment = .center
    messageLabel.frame = CGRect(x: 0, y: titleLabel.frame.maxY, width: baseWidth, height: itemHeight)
    baseView.addSubview(messageLabel)
    
    contentTextField.becomeFirstResponder()
    contentTextField.frame = CGRect(
      x: 0 + textFieldSpace,
      y: messageLabel.frame.maxY,
      width: baseWidth - (textFieldSpace * 2),
      height: itemHeight
    )
    contentTextField.borderStyle = .roundedRect
    baseView.addSubview(contentTextField)
    
    
    cancelButton.setTitle("Cancel", for: .normal)
    cancelButton.setTitleColor(.blue, for: .normal)
    cancelButton.frame = CGRect(x: 0, y: contentTextField.frame.maxY, width: baseWidth / 2, height: itemHeight)
    cancelButton.addTarget(self, action: #selector(buttonAction(_:)), for: .touchUpInside)
    baseView.addSubview(cancelButton)
    
    enterButton.setTitle("Enter", for: .normal)
    enterButton.setTitleColor(.blue, for: .normal)
    enterButton.frame = CGRect(x: cancelButton.frame.maxX, y: cancelButton.frame.minY, width: baseWidth / 2, height: itemHeight)
    enterButton.addTarget(self, action: #selector(buttonAction(_:)), for: .touchUpInside)
    baseView.addSubview(enterButton)
  }
  
  @objc private func buttonAction(_ sender: UIButton) {
    switch sender {
    case cancelButton:
      break
    default:
      guard let vc = presentingViewController as? FirstViewController else { return }
      vc.content = contentTextField.text ?? ""
      
      break
    }
    
    dismiss(animated: false)
  }
}

```

