[https://chocozero.github.io/IT/iOS/2018-02-09/iOS-UITabBarController%EC%99%80-UITabBar/](https://chocozero.github.io/IT/iOS/2018-02-09/iOS-UITabBarController와-UITabBar/)

```swift
show(<#T##vc: UIViewController##UIViewController#>, sender: <#T##Any?#>)
```









```swift
*코드로 윈도우 만들때 : SceneDelegate.swift 에서 코드 작성

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
       
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        print(window)
        let window = UIWindow(windowScene: windowScene)
        let vc = ViewController()
        
        window.rootViewController = vc
        window.backgroundColor = .systemBackground
        window.makeKeyAndVisible()
        self.window = window
```



# Navigation Controller















# Tap bar Controller

두번째 뷰컨트롤러에 연결하려면 탭바 컨트롤러를 드래그 해서 원하는 컨트롤러에 두고 segue 로 연결