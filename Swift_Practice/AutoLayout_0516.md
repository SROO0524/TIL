# AutoLayout

![스크린샷 2020-05-15 오후 1.22.16](/Users/kimmidum/Library/Application Support/typora-user-images/스크린샷 2020-05-15 오후 1.22.16.png)

안에 있는 붉은 선 클릭시 겉의 뷰 크기에 따라서 유연하게 조절됨. (해제 시에는 높이 너비값 고정되어 변하지 않음)



* Add New Constates >> 마진은 되도록이면 건들지 말기.
* leading : 글자를 읽을 때 시작하는 부분(언어에 따라 달라진다. 대부분은 왼쪽/아랍권은 오른쪽)
* Trailing : 글자가 끝나는 부분(대부분은 오른쪽)
* 오류가 나는상황 
  * 양쪽의 오토레이아웃이 잡혀있지 않고 한쪽이 잡혀있지 않을 경우나 높이의 값이 없을때!	
* superview : Safe Area를 포함해서 배경에 색을 넣고 싶을때 오토레이아웃을 지정한 뒤. 더블 클릭하여.superView 로 지정.



* 정렬



![스크린샷 2020-05-18 오전 10.19.45](/Users/kimmidum/Library/Application Support/typora-user-images/스크린샷 2020-05-18 오전 10.19.45.png)



* **Horizontally in Containts :** SuperView(부모뷰) 기준으로 수직 정렬
* **Vertically in Container :** SuperView(부모뷰)기준으로 수평 정렬



# [ 과제 ] 



**오토레이아웃 연습 (별도 이미지 참고)** 

1. View와 SafeArea를 구분해 오토레이아웃 설정하기 

2. 5개의 뷰를 생성하고 높이는 150으로 통일 

   * Safe Area Top 과 60 의 거리 

   * 가장 왼쪽의 뷰는 leading 20, 가장 오른쪽의 뷰는 trailing 20으로 설정하고 각 view 간의 거리는 8로 고정 

   * 각 위치에서 오른쪽에 있는 뷰는 왼쪽 뷰 width 의 0.7배에서 해당 위치의 인덱스만큼 뺀 값을 width 값으로 지님 

   * 예시) 2번째 뷰의 width는 1번째 뷰 width의 0.7배보다 1 작게 설정 3번째 뷰의 width는 2번째 뷰 width의 0.7배보다 2 작게 설정 

     









# Auto Layout Anchor

