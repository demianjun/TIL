# Enumerations
--
### 연관된 값의 그룹에 대해 공통 타입을 정의한 뒤 type-safe 하게 해당 값들을 사용가능

- 예시

```swift
enum CompassPoint {
  case north
  case south
  case east
  case west
}
```

- 열거형 타입의 이름은 Pascal Case
- 각각의 case는 Camel Case

- 보통 enum은 switch와 같이 사용


- Enum 예제

```swift

```

- Raw Value
	- Strings, Characters or any of the Integer of Floating-point number types
	- raw value는 해당 enum내에서 반드시 고유값이어야 함


```swift
//학점(A,B,C,D,F)을 enum으로 표현하고 각 케이스에 알맞는 학점 부여 (0.0 ~ 4.0)

enum score : Double
 {
   case A = 4.0, B = 3.0, C = 2.0, D = 1.0, F = 0.0
 }

score.A.rawValue

```
- Raw value 내부 값 지정
	- case 내의 raw value값은 unique해야 함
	- 1, 2번 경우는 지정 숫자 다음으로 진행됨
	- 3번 경우는 오류 -> unique하지 않기 때문

```swift
enum WeekdayAgain: Int {
//1.  case sunday = 5, monday, tuesday, wednesday, thursday, friday, saturday
//2.  case sunday, monday = 100, tuesday = 101, wednesday, thursday, friday, saturday
//3.  case sunday = 1, monday = 1, tuesday = 2, wednesday, thursday, friday, saturday
}

WeekdayAgain.sunday
WeekdayAgain.sunday.rawValue

WeekdayAgain.wednesday
WeekdayAgain.wednesday.rawValue
```


- Raw value에서 특정 위치 데이터 찾기
	- optional 타입이라 if let으로 unwrap도 가능

```swift
enum PlanetIntRaw: Int {
  case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto
}

PlanetIntRaw(rawValue: 5)
PlanetIntRaw(rawValue: 7)

PlanetIntRaw(rawValue: 0) // optional
PlanetIntRaw(rawValue: 15) //optional
```


- Nested (중첩)
	- 함수를 미리 지정하여 사용가능
	- 내용이 복잡하니 꼼꼼한 복습이 중요
	- .self애 대해서도 공부하기

	
	
- Mutating
	- enum 타입 내부 함수에서 자기 자신의 값을 변경해야 할 경우 사용하는 함수 
	- enum은 value 타입! -> value 타입은 변경시 mutating을 적어 줘야 함

	
```swift
//on 과 off 값을 가진 enum 타입 RemoteControl 을 정의하고, 그 내부에 호출 시마다 on, off 값을 바꿔주는 함수 구현

enum RemoteControl {
  case on, off
  mutating func toggle() {
    switch self {
    case .on:
      self = .off
    case .off:
      self = .on
    }
  }
}

var remoteControl = RemoteControl.on
remoteControl.toggle()
remoteControl.toggle() 
```


- Recursive Enumerations
	- 자주 쓰이진 않지만 알아둬야 한다!
	- 바로 사용하면 오류 -> 반드시 indirect를 붙여야 함