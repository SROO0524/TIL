# **UIViewcontroller Modal 화면 전환 과제**

> 문제: 3개의 뷰 컨트롤러 사이에 화면 전환하기     
>
> A는 B로 가는 버튼     
>
> B는 A로 돌아가는 dismiss 버튼과 C로 가는 버튼     
>
> C는 A 또는 B로 돌아가는 dismiss 버튼 
>
> (참고) A -> B  
>
> <- B -> C     
>
> B <- C 
>
> A   <-    C

* 풀이방법
  1. ViewController 를 3개 생성
  2. 각 view 별로 화면 전환 버튼 생성 후 화면 전환 기능 함수 구현
* **A 화면 ViewController **

```swift
import UIKit

class ViewController: UIViewController {

    let button = UIButton(type: . system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
       
        
        button.setTitle("Button", for: .normal)
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title2)
        button.sizeToFit()
        button.center = view.center
        button.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
        view.addSubview(button)
        
        
    }
    

    @objc private func didTapButton(_ sender : UIButton) {
        let nextVC = NextViewController()
        nextVC.modalPresentationStyle = .automatic
        // modalPresentationStyle : fullScreen or automatic 으로 변경할때 사용하는 명령어. 13.0 이상 부터는 별도 지정안하면 automatic 으로 반영됨.
//        nextVC.isModalInPresentation = true >> isModalInPresentation 쓰면 당겨서 내릴수 없게 된다.
        present(nextVC,animated: true)
    
    }
}
```



* **B화면 ViewController**

```swift
import UIKit




class NextViewController: UIViewController {

    let dismissButton = UIButton(type: .system)
    let moveToCButton = UIButton(type: .system)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        dismissButton.setTitle("Dismiss", for: .normal)
        dismissButton.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title2)
        dismissButton.sizeToFit()
        dismissButton.center = view.center
        dismissButton.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
        view.addSubview(dismissButton)

         moveToCButton.setTitle("Go_to_C", for: .normal)
         moveToCButton.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title2)
         moveToCButton.sizeToFit()
         moveToCButton.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
         moveToCButton.addTarget(self, action: #selector(moveCTap(_:)), for: .touchUpInside)
         view.addSubview(moveToCButton)
    }
    @objc private func didTapButton(_ sender :Any) {
        dismiss(animated: true)
    }
    
    
    @objc private func moveCTap(_ sender: Any){
        let nextCvc = CViewController()
        present(nextCvc, animated: true)
    }
//        as? 타입캐스팅을 통해 타입을 변경하여 사용.
        
//        A -> B -> C
//        presentingViewController?.dismiss = dismiss
        
//        A -> C 바로 가려면
//        presentingViewController?.presentingViewController?.dismiss(animated: true)
    
}

```

* **C 화면 ViewController**

```swift
import UIKit

class CViewController: UIViewController {

    let dismissButton = UIButton(type: .system)
    let goHomeButton = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        dismissButton.setTitle("Second Dismiss", for: .normal)
        dismissButton.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title2)
        dismissButton.sizeToFit()
        dismissButton.center = view.center
        dismissButton.setTitleColor(.white, for: .normal)
        dismissButton.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
        view.addSubview(dismissButton)
        
        goHomeButton.setTitle("Go Home", for: .normal)
        goHomeButton.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title2)
        goHomeButton.sizeToFit()
        goHomeButton.setTitleColor(.white, for: .normal)
        goHomeButton.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        goHomeButton.addTarget(self, action: #selector(onClickGoHomeButton(_:)), for: .touchUpInside)
        view.addSubview(goHomeButton)
        
    }

    @objc private func didTapButton(_ sender : UIButton) {
        dismiss(animated: true)
    }
    
    @objc private func onClickGoHomeButton(_ sender : UIButton) {
         // 부모의 부모 부부 값 저장, 옵셔널 처리 필수
//        presentingViewController?.dismiss(animated: true)
//        if let beforeVC = presentingViewController? {
//            print("🍏🍏");
//            print(beforeVC)
//          // 값이 있을 경우 화면 띄우기
//          beforeVC.dismiss(animated: true)
//        }
        self.view.window!.rootViewController?.dismiss(animated: true)
    }
}

```

