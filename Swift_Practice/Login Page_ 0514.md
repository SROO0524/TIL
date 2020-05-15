# Login Page 실습

* **참고 링크:** https://amywork.github.io/2017-09-24/SignUpSignInV01

1. **User Model 클래스 생성**
   * ID 와 비밀번호로 구성된 User 구조체를 담은 배열, model을 생성한다. 
   * model 내에 유저가 있는지 검사하는 메소드, 새로운 유저를 추가하는 메소드를 담는다. 
2. **로그인 화면 구성하기 (ID/ 비밀번호 기입 후 로그인 하는 페이지)**
   * UIButton, UITextField를 활용하여 UI 를 구성한다. 
   * 속성 usernameTextField, passWordTextField, loginButton
   * 메소드 01. didTapLoginButton : 로그인 버튼을 눌렀을 떄의 액션
   * 메소드 02. didEndOnExit : 텍스트 필드에서 리턴키를 눌렀을 때 resignFirstResponder를 통해 키보드를 내리는 함수 
3. **위의 코드에서 prepare 함수 뜯어보기** 
   * SignUp 버튼을 클릭했을 때 SignInViewController -> SignUpViewController로 이동하게끔 스토리보드에서 Segue를 지정해두었기 때문에,
   * prepare 메소드를 통해 화면 전환이 될 때 클로저를 담아서 보내도록 설정한다.
4. 회원가입 화면 구성하기. (로그인 버튼을 눌렀을때 회원이 아닐 경우 회원가입 하는 화면 구성)
   - UIButton, UITextField를 활용하여 UI를 구성한다.
   - **속성** usernameTextField, passwordTextField, passwordConformTextField signUpBtn
   - **메소드01** signUpBtn : 회원가입 버튼을 눌렀을 때의 액션
   - **메소드02** didTapExitButton : 화면 닫기를 눌렀을 때의 액션
   - **메소드03** didEndOnExit : 텍스트 필드에서 리턴키를 눌렀을 때 resignFirstResponder를 통해 키보드를 내리는 함수



















# FastCampus_ Login 실습

**[ 필수 구현 기능 ]// 스토리보드, 코드 자유**

1. 별도 첨부한 이미지와 같이 UI 구현. 원하는 형식으로 바꿔도 무관

2. 텍스트 필드는 UITextFieldDelegate 이용

3. 키보드에 의해 아이디와 비밀번호 textField가 가릴 수 있으므로  키보드가 나타날 때는 텍스트필드 위로 끌어올리고 내려갈 때는 같이 내려가기

4. 미리 설정해둔 아이디와 비밀번호가 동일할 경우 로그인이 완료된 메인 화면으로 이동 

5. 메인 화면에서는 입력받은 아이디를 출력하는 Label을 띄우고  다시 로그인 화면으로 돌아갈 수 있는 Sign Out 버튼 구성

   

   **[ 추가 기능 (1) ]**

   1. 미리 설정해둔 아이디와 비밀번호가 다를 경우 텍스트필드의 바탕화면을 일시적으로 빨갛게 만들었다가 원상 복구하기

      ```swift
      @IBAction func didTapSignIn(_ sender: UIButton) {
        	// typeID 에 확인하려는 값을 넣은 후 그 값을 ID 와 비교하여 맞으면 그대로 두고, 틀리면 아래 조건 대로 TextField을 빨간색으로 색상변화 줌 
              guard let typedId = emailTextField.text, typedId == str_id else {
                  emailTextField.backgroundColor = .red 
                // Id가 일치 하지 않으면 붉은색이 나타났다가 흰색으로 변하게됨.(withDuration: 지연시간 )
                  UIView.animate(withDuration: 1) {
                      self.emailTextField.backgroundColor = .clear
                  }
                  return
              }
              guard let typedPw = passWordTextField.text, typedPw == str_pw else {
                  passWordTextField.backgroundColor = .red
                  UIView.animate(withDuration: 1) {
                      self.passWordTextField.backgroundColor = .clear
                  }
                  return
              }
      ```

      

   2. 텍스트필드에 입력할 수 있는 ㅇ

      ```swift
      //텍스트필드 입력 글자수 제한 방법.
      
      // UITextField 를 사용하여 Text 입력란을 만들었을 경우.
      
      func textField(_ textField : UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String ) -> Bool {
        // 현재 가지고 있는 텍스트 값을 가지고 오고, 만약 값이 없으면 Fail 처리. 
        let currentText = textField.text ?? ""
              // 현재 텍스트의 범위를 읽어 들이고, 읽을 범위가 없으면 false 처리. 
              guard let stringRange = Range(range, in : currentText) else { return false}
      				// 바꿀 내용을 적어준 후 16자로 제한. 
              let updatedText = currentText.replacingCharacters(in: stringRange, with: string)
              return updatedText.count <= 16
          }
          
      
      //UITextview를 사용했을 경우
      
      func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        // 현재 가지고 있는 텍스트 값을 가지고 오고, 만약 값이 없으면 Fail 처리. 
          let currentText = textView.text ?? ""
      
         // 현재 텍스트의 범위를 읽어 들이고, 읽을 범위가 없으면 false 처리.
          guard let stringRange = Range(range, in: currentText) else { return false }
      
      // 바꿀 내용을 적어준 후 16자로 제한.     
        let updatedText = currentText.replacingCharacters(in: stringRange, with: text)
        return updatedText.count <= 16
      }
      
      ```

      

   3. 아이디와 비밀번호는 모두 4 ~ 16자 사이여야 함  

   

   **[ 추가 기능 (2) ]**

   1. 자동 로그인한 번 로그인에 성공했으면 Sign Out을 하기 전에는 앱을 껏다 켜도 자동 로그인된 상태로 메인 화면으로 진입
   2. 회원 가입 페이지회원가입 페이지를 만든 뒤 회원 가입한 유저의 아이디와 비밀번호를 추가하고그것으로도 로그인 할 수 있도록 구현하기









