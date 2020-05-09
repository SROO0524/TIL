## Segue 를 이용한 화면전환                                        

###  *<u>1. 화면 A -> B로 이동하는 버튼과 기능 구현 후 B -> A로 가는 버튼과 기능도 구현하기.</u>* 



1)  스토리보드에 ViewController 를 두개 만든 후 각 화면에 버튼 하나씩 배치.

![Segue_화면전환기초_1](https://github.com/SROO0524/TIL/blob/master/Image/Segue_화면전환기초_1.png)

​		2) 스토리보드의 화면 B와 연결되는 새로운 ViewController.swift 생성

![Segue_화면전환기초_2](https://github.com/SROO0524/TIL/blob/master/Image/Segue_화면전환기초_2.png)

​		

​		3) 스토리보드 화면 A에 있는 Button 을 화면 B로 Control 클릭후 끌어서 Segue를 Show 로 연결

​		4)  화면 B로 이동 후 다시 화면 A로 이동하는 버튼(Go to A)을 화면 B에 생성

​		5) 화면B의 Go to A 버튼을 누르면 다시 A로 돌아오는 기능을 구현하기 위해 									ViewController.swift에 @IBAction 을  생성.

```swift
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func unwindToFirstViewController(_ unwindSegue: UIStoryboardSegue) {
    
    }   
}

```

​			6) Unwind Segue 생성 후 화면 B에 있는 Button을 Ctrl 을 누른 후 뷰컨트롤러 위쪽에 있는 				Exit 버튼에 가져다 댄 후 ViewController.swift에서 생성한 unwind @IBAction에 연결시				킴. 연결여부 확인은 아래와 같이 함

![Segue_화면전환기초_3](https://github.com/SROO0524/TIL/blob/master/Image/Segue_화면전환기초_3.png)



###  *<u>2. 화면 A에 있는 버튼을 누르면 버튼에 쓰인  텍스트가 화면 B 의  Label에 그대로 출력되도록 구현</u>* 







