# UIViewController



## **The Role of View Controllers**

> * 앱 구조의 뼈대 
> * 모든 앱에 반드시 하나 이상, 􏰊􏰕􏰖 􏰗􏰘대부분 많은 수의  􏰙ViewController􏰚 􏰆􏰛􏰆로 구성
> * 주요역할
>   * View Management
>   * Data Marshaling
>   * User Interactions
>   * Resource Management
>   * Adaptivity



## View Management

> * 주요역할 - 뷰 계층관리 
> * 모든 뷰 컨트롤러마다 RootView를 지니며, 화면에 표시 하기 위해서는 해당 Rootview 계층에 속해야함.![스크린샷 2020-04-27 오후 2.27.04](/Users/kimmidum/Library/Application Support/typora-user-images/스크린샷 2020-04-27 오후 2.27.04.png)



## Two types of view controllers

> * **Content View Controller**
>
>   * 모든 뷰를 단독으로 관리 
>   * UIViewController, UITableController, UICollectionViewController 등
>
> * **Container View Controllers**
>
>   * 자체 뷰 + 하나 이상의 자식 뷰 컨트롤러가 가진 루트뷰 관리 
>   * 각 컨텐츠를 관리 하는 것이 아닌 루트뷰만 관리하며 컨테이너 디자인에 따라 크기 조정
>   * UINavigationController, UITabbarController, UIPageViewController 등
>
>   ![스크린샷 2020-04-27 오후 2.33.10](/Users/kimmidum/Library/Application Support/typora-user-images/스크린샷 2020-04-27 오후 2.33.10.png)



## **UIViewController 실습**

* 2개의 뷰 컨트롤러 사이에 화면 전환하기

* 아래 예시 이미지

* ![0428_UIViewController_1](./Images/0428_UIViewController_1.png)

* ![0428_UIViewController_2](./Images/0428_UIViewController_2.png)

  * **viewcontroller.swift**

    ```swift
    import UIKit
    
    class ViewController: UIViewController {
    
        let button = UIButton(type: . system)
        
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .white
            
           
            let button = UIButton(type: . system)
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

  * **NextViewController.swift**

    ```swift
    //
    //  NextViewController.swift
    //  viewControllerExample
    //
    //  Created by 김믿음 on 2020/04/27.
    //  Copyright © 2020 김믿음. All rights reserved.
    //
    
    import UIKit
    
    class NextViewController: UIViewController {
    
        let button = UIButton(type: .system)
        
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor =  .gray
    
            
            button.setTitle("Dismiss", for: .normal)
            button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title2)
            button.sizeToFit()
            button.center = view.center
            button.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
            view.addSubview(button)
           
        }
        
        
        @objc private func didTapButton(_ sender : UIButton) {
            
    //        presentingViewController - 나를 띄운 viewComtroller
    //        presentedViewController - 내가 띄운 viewController
    //        self // nextVC
    //        self.presentingViewController // viewController
    //        self.presentingViewController?.presentedViewController // NextVC
            
    //        let colors: [UIColor] = [.red, .blue, .gray, .black]
    //        presentingViewController?.view.backgroundColor = colors.randomElement()!
            
    //        presentingViewController?.presentingViewController? >> 나를 띄운놈의 띄운놈을 명칭할때.
            
            if let vc = presentingViewController as? ViewController {
                vc.button.setTitle("클릭", for: .normal)
            }
            
    //        as? 타입캐스팅을 통해 타입을 변경하여 사용.
    //        A -> B -> C
    //        presentingViewController?.dismiss = dismiss
            
    //        A -> C 바로 가려면
    //        presentingViewController?.presentingViewController?.dismiss(animated: true)
            
            
            dismiss(animated: true)
            
            
        }
       
        
    
    
    }
    
    ```

    

* * ViewController.swift

  ```swift
  import UIKit
  
  class ViewController: UIViewController {
  
      let button = UIButton(type: . system)
      
      override func viewDidLoad() {
          super.viewDidLoad()
          view.backgroundColor = .white
          
         
          let button = UIButton(type: . system)
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

  * **NextViewController.swift -**  기존 뷰컨트롤러 위에 전환될 별도의 뷰를 만들어준다.

  ```swift
  import UIKit
  
  class NextViewController: UIViewController {
  
      let button = UIButton(type: .system)
      
      override func viewDidLoad() {
          super.viewDidLoad()
          view.backgroundColor =  .gray
  
          
          button.setTitle("Dismiss", for: .normal)
          button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title2)
          button.sizeToFit()
          button.center = view.center
          button.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
          view.addSubview(button)
         
      }
      
      
      @objc private func didTapButton(_ sender : UIButton) {
          
  //        presentingViewController - 나를 띄운 viewComtroller
  //        presentedViewController - 내가 띄운 viewController
  //        self // nextVC
  //        self.presentingViewController // viewController
  //        self.presentingViewController?.presentedViewController // NextVC
          
  //        let colors: [UIColor] = [.red, .blue, .gray, .black]
  //        presentingViewController?.view.backgroundColor = colors.randomElement()!
          
  //        presentingViewController?.presentingViewController? >> 나를 띄운놈의 띄운놈을 명칭할때.
          
          if let vc = presentingViewController as? ViewController {
              vc.button.setTitle("클릭", for: .normal)
          }
          
  //        as? 타입캐스팅을 통해 타입을 변경하여 사용.
  //        A -> B -> C
  //        presentingViewController?.dismiss = dismiss
          
  //        A -> C 바로 가려면
  //        presentingViewController?.presentingViewController?.dismiss(animated: true)
          
          
          dismiss(animated: true)
          
          
      }
     
      
  
  
  }
  
  ```

  



> **과제**

1. 문제: 3개의 뷰 컨트롤러 사이에 화면 전환하기     

* A는 B로 가는 버튼     
* B는 A로 돌아가는 dismiss 버튼과 C로 가는 버튼     
* C는 A 또는 B로 돌아가는 dismiss 버튼 (참고) A -> B     <- B -> C     B <- C A   <-    C

2. ViewController 데이터 전달  > AViewController 와 BViewController 를 만든 뒤  
   * 각각 하나씩의 Label 생성  > A와 B를 화면 전환할 때마다 각 Label에 전환 횟수 1씩 증가    e.g. A에서 B로 갈 때 1, B에서 다시 A로 넘어올 때 2, 다시 A에서 B로 가면  3