## XCODE 실습

*  Button을 누를 때마다 Label 의 값 변경하기   
  * 1) +버튼 또는 -버튼을 누르면 숫자가 증가/감소하도록 만들기   
  * 2) 숫자가 증가할 때는 label의 텍스트 색을 파란색, 감소할 때는 빨간색으로 변경
* UISwitch, UISegmentedControl 을 이용한 문제 
  * UISwitch : On, Off 가 바뀔 때마다 Label 의 내용이 On, Off 로 표시되도록 구현
  * UISegmentedControl : 선택 내용이 바뀔 때마다 Label 의 내용도 해당 타이틀 값으로 함께 변경되도록 구현 참고로
  * 위 2개는 버튼과 달리 event 처리를 touchUpInside 가 아니라 valueChanged 라는 것을 활용해야 함



```swift
import UIKit

class ViewController: UIViewController {

    
    
    let switchOnOFF = UISwitch()
    let labelOnOff = UILabel()
    let segmentLabel = UILabel()
   
    
    
    var count : Int = 0
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var countNumbers: UILabel!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var segmentButton :UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        countNumbers.text = "counting"
        countNumbers.frame = CGRect(x: 120, y: 450, width: 150, height: 50)
        
        plusButton.setTitle("UP", for: .highlighted)
        plusButton.frame = CGRect(x: 40, y: 550, width: 100, height: 50)
        
        
        
        minusButton.setTitle("DOWN", for: .highlighted)
        minusButton.frame = CGRect(x: 240, y: 550, width: 100, height: 50)
        
        
        view.addSubview(switchOnOFF)
        switchOnOFF.backgroundColor = .white
        switchOnOFF.frame = CGRect(x: 150, y: 100, width: 100, height: 50)
        
        view.addSubview(labelOnOff)
        labelOnOff.backgroundColor = .systemGreen
        labelOnOff.frame = CGRect(x: 110, y: 200, width: 150, height: 50)
        labelOnOff.textAlignment = .center
        
        
        switchOnOFF.addTarget(self, action: #selector(stateChanged), for: .valueChanged)
        
        view.addSubview(segmentLabel)
        segmentLabel.backgroundColor = .systemPurple
        segmentLabel.textColor = .white
        segmentLabel.frame = CGRect(x: 110, y: 300, width: 100, height: 50)
        segmentLabel.textAlignment = .center
        
        
    }
    
    @objc func stateChanged(switchState : UISwitch){
        if switchOnOFF.isOn {
            labelOnOff.text = "ON"
    
        } else {
            labelOnOff.text = " OFF"
            
        }
    }
    
    
    
    @IBAction func segmentChanged(_ sender: Any) {
        print(segmentButton.selectedSegmentIndex)
        switch segmentButton.selectedSegmentIndex {
            case 0:
                segmentLabel.text = "Lock"
            default:
                segmentLabel.text = "Unlock"
        }
    }
        
    
    

    @IBAction func buttonClicked(_ sender: UIButton) {
        print("버튼을 눌렀습니다")
    }
    @IBAction func plusButtonClicked(_ sender: Any) {
        count += 1
        countNumbers.text = String(count)
        countNumbers.backgroundColor = .systemBlue
        
        
    }
    @IBAction func minusButtonClicked(_ sender: Any) {
        count -= 1
        countNumbers.text = String(count)
        countNumbers.backgroundColor = .systemRed
    }
    
}


```

