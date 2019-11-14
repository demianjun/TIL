# Optional
--

### Swift에서 매우 중요한 개념!

- Optional은 값이 없을 수 있는 상황에 사용
- Objective - C에는 없음
- 2가지 타입의 optional
	- 값을 전혀 가지고 있지 않음
	- 값이 있으며, 그 값에 접근하기 위해 optional을 벗겨 낼 수 있음 -> unwrap이라 부름!

- Optional 타입 선언방식

```swift
 var variable name: Type?
 var variable name: Optional<Type>
```
  
- nil -> 데이터가 비어 있을때의 값!

```swiff
var optionalIntInit = Optional<Int>(0)
var optionalInt: Int? = 0
type(of: optionalInt)

optionalInt = nil
```
-> valueless 즉, 데이터를 비울때 활용


- optional 선언 중 오류가 나오는 경우

```swift
var nonOptional1 = nil
// 오류발생원인 ; 기본적인 타임을 먼저 지정해 줘야 하기 떼문에

var nonOptional2: Int = nil
// 오류발생원인 ; 타입 선언시 optinal로 선언하지 않으면 optional로 만들 수 없음
```

- Optional -> NonOptional (X)
- Optional <- NonOptional (O) ; optional은 nonoptional로 넣을 수 있지만 반대로는 안됨!
 
 
 ✓ int?와 int는 다른 타입!!


- Optional Binding 예시
	- if let에서 선언되면 nil이 아닐경우 if를 실행, nil이면 if를 빠져나가거나 else를 실행

```swift
let nilValue: String? = nil
let someValue = "100"

if let number = Int(someValue) {
  print("\"\(someValue)\" has an integer value of \(number)")
} else {
  print("Could not be converted to an integer")
}

if let number = nilValue {
  print("\"\(someValue)\" has an integer value of \(number)")
} else {
  print("Could not be converted to an integer")
}
```

- 여러개의 Binding 사용 예시

```swift
// 여러 개의 옵셔널 바인딩과 불리언 조건을 함께 사용 가능
if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber, secondNumber < 100
{
  print("\(firstNumber) < \(secondNumber) < 100")
}

// 위와 동일한 동작
if let firstNumber = Int("4") 
{
  if let secondNumber = Int("42") 
  {
    if firstNumber < secondNumber, secondNumber < 100 {
      print("\(firstNumber) < \(secondNumber) < 100")
    }
  }
}
```

- 강제로 Optional을 제거할 떼! -> Unwrapping
	- '!'를 붙이면 됨 

```swift
let nonOptional = OptionalExpression!
```


- 왜 '!'를 붙이지 않고 코드로 unwrap을 해야 할까?
	- '!'는 확실하게 데이터가 들어있지 않으면 컴파일오류 발생
	- 안전하게 실행하기 위해선 if let을 추천!!
	- if let으로 unwrap하는 것 연습필요!

- IUO (Implicitly Unwrapped Optional)
	- 타입을 선언할때 바로 '!'를 붙이는 것이 IUO
	- optional을 받을 순 있지만 일반타입과 연동가능
	- IUO는 반드시 값이 있다고 확신 할 수 있을때만 사용해야 함

```swift
var assumedString: String! = "An implicitly unwrapped optional string."
```

- Nil-coalescing Operator
	 - 자주 사용되지는 않음
	 - nil이 아니라면 '!'붙여서, nil이라면 '?' 뒤에 것 출력 -> '??'뒤에 값은 nil일때 사용할 기본값

```swift
optionalStr = nil

var result = ""
if optionalStr != nil {
   result = optionalStr!
} else {
   result = "This is a nil value"
}
print(optionalStr)
print(result)


let anotherExpression = optionalStr ?? "This is a nil value"
print(optionalStr)
print(anotherExpression)

// 삼항연산자로 표현

let anotherExpression = optionalStr ?? "This is a nil value"

let answer = optionalStr != nil ? optionalStr! : "This is a nil value"

```

- Optional Chaing
 - optional로 선언된 후엔 관련 변수는 모두 optional이 됨
 - optional binding을 통해 unwrap해야 함


- 둘의 차이는?

```swift
var optionalArr1: [Int]? = [1,2,3] -> array자체가 optional
var optionalArr2: [Int?] = [1,2,3] -> array 속 element들이 optional

var arr1: [Int]? = [1,2,3]
//arr1.append(nil) -> 불가
arr1 = nil


var arr2: [Int?] = [1,2,3]
arr2.append(nil)
//arr2 = nil -> 불가
```


- Optional Function Types
	- 함수를 변수로 저장할 수 있음

```swift
func abc() -> Int
{
    return 0
}
var abcFunction: (()->Int)? = abc
// 함수를 변수에 저장


func sum(a:Int, b:Int) -> Int
{
    return a+b
}
var sumFunction:((Int, Int) -> Int)? = sum(a:b:)

sum(a:1, b:2)
```

- Optional 예제

```swift
/2개의 정수를 입력받아 Modulo 연산(%)의 결과를 반환하는 함수를 만들되
//2번째 파라미터와 결과값의 타입은 옵셔널로 정의.
//두 번째 파라미터 입력값으로 nil 이나 0이 들어오면 결과로 nil을 반환하고, 그 외에는 계산 결과 반환


func calculateModulo(op1: Int, op2: Int?) -> Int?
{
    
    var result:Int? = 0
    
    if op2 != nil
    {
        result = op2 == 0 ? nil : op1 % op2!
    }
    else
    {
        result = nil
    }
    return result
}

calculateModulo(op1: 10, op2: 0)
```