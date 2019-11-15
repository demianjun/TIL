#### Snippets 생성
--

- snippets란 자주 사용하는 함수들을 개인적으로 설정 할 수 있는 기능으로 설정해두면 코딩시 편리함



--

#Closure

- 이름이 없는 함수 -> 함수와 동일한 기능을 하지만 함수와 달리 이름이 없음


--
### Globa functions
- 어디서나 쓸수 있는 함수

### Nested funcions(중첩함수)
- 함수에서 리턴으로 함수 가능
- 함수에서 리턴으로 변수 가능
- 나중에 다시 배울 것!

### Closure

```swift
//Closure Expression Syntax
 
 { (parameters) -> return type in
   statements
 }
 
 
 func aaaa(parameters) -> return type {
   statements
 }
 
 closure(위)와 func이 같음
```

- 타입을 직접 지정 가능
	- 타입추론으로 사용하는 것도 가능 -> 직접지정할지 선택

```swift
// Type Annotation
let closureWithParamAndReturnType1: (String) -> String = { param in
  return param + "!"
}


// Type Inference
let closureWithParamAndReturnType3 = { param in
  param + "!"
}
// closure에서 in 다음은 무조건 return
```

Quiz

```swift
//문자열을 입력받으면 그 문자열의 개수를 반환하는 클로져 구현

//1번 방법
let countA = { (a: String) -> Int in
    return a.count
}
print(countA("hello"))


//2번 방법
({ print("hello".count)})()

//1, 2번 결과 동일


//숫자 하나를 입력받은 뒤 1을 더한 값을 반환하는 클로져 구현

let addOne = { (num: Int) -> Int in
  return num + 1
}
addOne(5)

```

- Closure를 쓰는 이유
	- 문법간소화 / 읽기 좋은 코드
	- 지연 생성 -> 필요할때 값을 출력
	- 주변 컨텍스트의 값을 캡쳐하여 자업 수행 가능

--
#### 문법 최적화
 - 문맥을 통해 매개변수 및 반환 값에 대한 타입 추론
 - 단일 표현식 클로저에서의 반환 키워드 생략
 - 축약 인수명
 - 후행 클로저 문법

 
--

- 문법 최적화 예제
	- 꾸준한 연습만이 생명

```swift
// 입력된 문자열의 개수를 반환하는 클로저를 함수의 파라미터로 전달하는 예
func performClosure(param: (String) -> Int) {
  param("Swift")
}

performClosure(param: { (str: String) -> Int in
  return str.count
})

performClosure(param: { (str: String) in
  return str.count
})

performClosure(param: { str in
  return str.count
})

performClosure(param: {
  return $0.count
}) //$0은 입력되는 첫번째 파라미터를 의미

performClosure(param: {
  $0.count
})

performClosure(param: ) {
  $0.count
}

performClosure() {
  $0.count
} // 데이터가 맨 마지막에 있을때만 이렇게 축약가능

performClosure { $0.count }
```

- Inline Closure
	- 함수의 인수로 들어가는 closure
	- 아래 예시를 참고

```swift
func closureParamFunction(closure: () -> Void) {
  closure()
}
func printFunction() {
  print("Swift Function!")
}
let printClosure = {
  print("Swift Closure!")
}

closureParamFunction(closure: printFunction)
closureParamFunction(closure: printClosure)
```

- Trailing Closure	
	- 함수의 마지막 인수에만 사용가능
	- 하나의 라인에 다 표현하지 못할 긴 클로져에 사용하면 좋음

```swift
func multiClosureParams(closure1: () -> Void, closure2: () -> Void) {
  closure1()
  closure2()
}

multiClosureParams(closure1: {
  print("inline")
}, closure2: {
  print("inline")
})
// closure이 2개 이상일 경우 마지막 closure(closure2) 명시는 선택사항 ; 써도 되고 안써도 됨

multiClosureParams(closure1: {
  print("inline")
}) {
  print("trailing")
}
```

- Closure 만들기 예제

```swift
//정수를 하나 입력받아 2의 배수 여부를 반환하는 클로져 

func inputInt1(a : Int) -> Bool {
    if a%2 == 0 {
        return true
    }
    return false
}
inputInt1(a: 57)


let inputInt2 = {(a : Int) -> Bool in
    return a%2 == 0
}
inputInt2(57)


let inputInt3 = {(a) in
    a%2 == 0
}
inputInt3(57)



//정수를 두 개 입력 받아 곱한 결과를 반환하는 클로져

func inputTwoNum1(a:Int, b:Int) -> Int {
    return a*b
}
inputTwoNum1(a: 7, b: 9)


let inputTwoNum2 = {(a:Int, b:Int) -> Int in
    return a*b
}
inputTwoNum2(7,9)


let inputTwoNum3 = {(a:Int , b:Int) in
    a*b
}
inputTwoNum3(7,9)
```