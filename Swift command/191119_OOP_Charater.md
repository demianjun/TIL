# OOP 4대 특징- 추상화 (Abstraction)- 캡슐화 (Encapsulation)		- 은닉화 (Information Hiding)- 상속성 (Inheritance)- 다형성 (Polymorphism)

--

#### 추상화 (Abstraction)
- 복잡성을 줄이고 목적에 집중할 수 있도록 단순화 시키는 것
 - 공통점만 취하기
 - 불필요한 세수사항을 제거 -> 단순화
 - 디자인레벨에서 사용 (설계단계)
-  protocol을 미리설정 한 후 class에서 선언하면 설정한 내용들을 채워줘야 함

```swift
protocol Jumpable {
var canJump: Bool { get set }
var jumpHeight: Double { get } // 최소조건이기 때문에 get만 했어도 set을 해도 된다
}
```
</br>

#### 캡슐화 (Encapsulation)
- 구현 레벨에서의 개념
- 연관된 상태와 행동을 하나의 객체로 만드는 것
- 정보 은닉화 -> 외부에 알리고자 하는 것만 나타내고 나머진 숨기는 것
- 독립적으로 활동 할 수 있도록 
- 외부에서 자세히 몰라도 되는 동작방법을 숨기기

캡슐화 예제

```swift
class A {

    private var location = "서울"
    
    private func loc1() {
        print("다이소")
    }
    private func loc2() {
        print("NBA 아웃렛매장")
    }
  
    private func ing1() {
        print("커피한잔 마시기")
    }
    private func ing2() {
        print("휴계소에서 우동먹기")
    }
    
    func currentLocation() {
        
        print(location)
        loc1()
        loc2()
        print("현재위치는", location)
        
    }
    
    func goToBusan() {
        
        ing1()
        print("부산가는 중")
        ing2()
        location = "부산"
    }
}

let a = A()
a.currentLocation()
a.goToBusan()
a.currentLocation()
```
</br>

#### 상속성 (Inheritance)
- 하나의 클래스의 특징을 다른 클래스가 물려받아 그 속성과 기능을 동일하게 사용하는 것
- 재사용과 확장을 위해 사용
- 부모클래스가 가진것은 자식클래스가 모두 쓸수 있지만 자식클래스가 가진것은 부모클래스가 쓸수 없을수도 있음
- **'final class'**는 더이상 상속이 되지 않음

</br>
상속 예제

```swift
class Person {
    let name = "Don Cic"
    var age = 20
    let nation = "Slovenian"
}

class Student: Person {
    let team = "Dallas"
}

let a = Student()
a.age
a.name

class UniversityStudent: Student {
}

let b = UniversityStudent()
b.age
b.name
b.team

```
</br>


#### 다형성 (Polymorphism)
- 동일한 요청에 대해 각각 다른 방식으로 응답할 수 있도록 만드는 것
- Overriding, Overloading 두종류가 있음
	- Overriding : 상위클래스에서 상속 받은 메서드를  재정의 하는 것

	
	- Overloading : 동일한 이름의 메서드가 매개 변수의 이름, 타입 등의 따라 다르게 동작하는 것
	->  1. 다른 파라미터 이름, 2. 다른 파라미터 타입, 3. 다른 파라미터 개수

다형성 예제

```swift
class Dog {
  func bark() {
    print("멍멍")
  }
}

let dog = Dog()
dog.bark()

class Poodle: Dog {
    override func bark() {
        print("왈왈")
    }
}

let poo = Poodle()
poo.bark()


class Husky:Dog {
    override func bark() {
        print("월월")
    }
}

let hus = Husky()
hus.bark()

class Bulldog:Dog {
    override func bark() {
        print("컹컹")
    }
}

let bul = Bulldog()
bul.bark()
```