# UIViewControler

- ViewControler의 역할 
	- 앱구조의 뼈대
	- 모든 앱에 반드시 하나 이상, 대부분 많은 수의 ViewControler로 구성
- 주요역할
	- View Management 	- Data Marshaling 
	- User Interactions 	- Resource Management 	- Adaptivity

---
</br>

- Resource Management
	- 뷰컨트롤러가 새엉산 모든 뷰와 객채들은 뷰컨트롤러의 책임
	- 뷰컨트롤러의 생명 주기에 따라 생성되었다가 자동 소멸되기도 하지만 ARC 개념에 맞게 관리가 필요
	- 메모리 부족시 didReceiveMemoryWaring 메서드에서 꼭 유지하지 않아도 되는 자원들은 정리 필요

- Adaptivity
	- 뷰컨트롤러는 뷰의 표현을 책임지고, 현재 환경에 적절한 방법으로 적용되도록 할 책임을 가짐

</br>

- The RootViewController
	- UIWindow는 그 자체로는 유저에게 보여지는 컨텐츠를 가지지 못함
	- Window는 정확히 하나으 RootViewController를 가지는데 이것을 통해 컨텐츠를 표현
- UINavigatorController
	- Stack식으로 화면을 하나씩 쌓아 올리며 표현

</br>

- viewCopntroller Life Cycle
	- Rootview 로드시 viewDidLoad -> 메모리 상에 로드 됨
	


---

- iOS12 버젼과 iOS13버젼의 차이를 알고 체크해야 함
	- 화면 표현 방식이 iOS13에선 12버젼방식을 선택할 수 있음 -> iOS12에선 기본