# Access Levels

- open
- public
	- open과 public은 접근을 허용
 </br>
- internal
	- 기본값으로 지정돈 접근수준
 </br>
- fileprivate
- private
	- 접근불가
 </br>
  </br>
-  Command Line Tool 로 체크
- UIViewController, Int 등 애플 프레임워크의 접근 제한자 확인

- 접근허용 명령은 적어주는 위치에 따라 적용범위가 달라짐
</br>

```swift
ex) private var private Property // 프로퍼티에만 private 적용

open class AClass // class전체에 open적용 -> 실제론 open이 아닌 internal로 설정됨 
```
</br>

- Nested Types
	- Private  ->  Fileprivate
	- Fileprivate  ->  Fileprivate
	- Internal  ->  Internal
	- Public  ->  Internal
	- Open  ->  Internal

- _fileprivate는 같은 파일에서만 접근 가능_
	- _사용하려면 간접적으로 접근하여 사용해야 함_

- private을 붙인 클래스안 프로퍼티에 붙은 접근허용 명령은 의미가 없음
 - private은 같은 파일내에서 fileprivate 처럼 사용 가능 (간접사용)
- private을  붙인 메소드는 class안에서만 사용할 수 있음

 --

#### Getters and Setters
-  Getter 와 Setter 는 그것이 속하는 변수, 상수 등에 대해 동일한 접근 레벨을 가짐 
-  이 때 Getter 와 Setter 에 대해서 각각 다른 접근 제한자 설정 가능

- private(set) -> 외부에서 값을 넣을 수 없도록 만듬!

```swift
internal private(set) var numberOfEdits = 0 //internal은 getter 설정임 ; 생략가능


public var value: String = "" { // 'public'만 적으면 -> get, set모두에 적용, 'public(set)' -> set만 적용

```

</br>

#### Types
- Tuple 유형의 접근 수준은 자동으로 추론되며 명시적으로 지정 불가능
-  튜플 유형에 대한 엑세스 수준은 해당 튜플에 사용된 모든 유형 중 가장 제한적인 엑세스 수준에 맞춰지게 됨

Tuple 예제

```swift
internal class SomeInternalClass {}
private class SomePrivateClass {}

fileprivate func returnTupleFunction() -> (SomeInternalClass, SomePrivateClass) {
  return (SomeInternalClass(), SomePrivateClass())
}

//let result = returnTupleFunction() <- 접근레벨이 달라 오류

fileprivate let result = returnTupleFunction()
```

#### Enumeration Types 예제
 
 
```swift
private enum 방위1 {
  case 동, 서, 남, 북
}


//let enumeration = 방위1.남
fileprivate let enumeration = 방위1.남

switch enumeration {
case .동, .서:
  print("좌우")
case .남, .북:
  print("상하")
}


// 각 case 별로 개별적인 접근 수준 설정 불가
```

#### Type Aliases

```swift
class AliasClass {
  let someProperty = 1
}

//public typealias Typealiases = AliasClass
//internal typealias Typealiases = AliasClass -> 1.
fileprivate typealias Typealiases = AliasClass // -> 2.


//let aliasesInstance = Typealiases() -> 1.
fileprivate let aliasesInstance = Typealiases() // -> 2.
aliasesInstance.someProperty
```






