## Array

- 통과 같은 개념
- array 안에는 같은 타입의 변수만 저장
- element index는 순번이 있으면 '0'이 첫번째

- <h5>장점
	- 순서가 있는 아이템
	- 아이템의 순서를 알면 유용할 떄

--

- 변수선언 = let(var) = [] ; 자동변수 설정
- let emptyArray = [] -> 에러발생 ; array는 기본적으로 int 값이 있어야 한다
	- let emptyArray: [String] = [] 이런식으로 선언해야 함

- 하나의 Array에는 한종류 타입만 가능
	- let strArray5 = ["apple", 3.14, 1] -> Any라는 타입으로 선언하면 저장 가능

```swift
- fruits.endIndex -> [index0(start index), index1, index2(end index 🙅🏻),
end index 🙆🏻] 주의가 필요

```

- 선언된 Array안에 특정 데이터를 찾을 땐

```swift
let alphabet = ["A", "B", "C", "D", "E"]

if alphabet.contains("A") {
  print("contains A")
} // ***.contains('n') -> 원하는 값이 있으면 true, 없으면 false

if let index = alphabet.firstIndex(of: "D") {
  print("index of D: \(index)")
} //***.firstIndex(of: 'n') -> 특정 'n'의 위치()를 찾을 때

```

- 새로운 element를 입력하는 것은 자주 사용 할 것으로 예상됨 ☆ 중요함

```swift
var alphabetArray = ["A"]
alphabetArray.append("B") // 뒤에 추가
alphabetArray += ["C"] // 뒤에 추가 -> [] 기호가 필요함

alphabetArray.insert("S", at: 0) // 특정 위치에 추가 -> 변경이 아닌 추가이기에 본래 있던 element는 뒤로 밀림
```

- 특정위치에 element를 변경 시킬 때 사용 -> 연습이 많이 필요함

```swift
alphabetArray[0] = "Z" // 특정위치의 element를 변경(수정)
alphabetArray[2...] = ["Q", "W"] // index2 이상의 element들을 모두 변경
```

- Element를 지울땐 코드를 작성해서 지워야 함

```swift
// index 찾아 지우기
alphabetArray = ["A", "B", "C", "D", "E"]

if let indexC = alphabetArray.firstIndex(of: "C")
{
  alphabetArray.remove(at: indexC)
}
//특정값을 바로 제거하는 메소드는 존재하지 않음 -> 찾아 제거하는 코드를 작성해 줘야 한다
```

- 정렬은 두 종류가 있음 -> 현재형 vs 과거분사형으로 암기하면 좋을듯!
	- shuffle vs shuffled -> shuffle ; array 자체가 변환O(void) 반환X
	- shuffled ; array 자체가 변환X(반환타입 존재) 반환O
	- sorted vs sort -> 위와 같은 개념








