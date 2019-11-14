1.옵셔널 타입의 문자열 파라미터 3개를 입력받은 뒤, 옵셔널을 추출하여 Unwrapped 된 하나의 문자열로 합쳐서 반환하는 함수

```swift
/*
입력 예시 및 결과
combineString1(str1: "AB", str2: "CD", str3: "EF")   
// "ABCDEF"
combineString1(str1: "AB", str2: nil, str3: "EF")    
// "ABEF"
*/

func combineString(str1: String?, str2: String?, str3: String?) -> String
{
    var str:String = ""
    if let str1=str1
    {
        str += str1
    }
    if let str2=str2
    {
        str += str2
    }
    if let str3=str3
    {
        str += str3
    }
    
    return str
}
combineString(str1: "AB", str2: nil , str3: "EF")
```



---

2.사칙연산(+, -, *, /)을 가진 enum 타입 Arithmetic과 2개의 자연수를 입력 파라미터로 받아 (파라미터 총 3개) 해당 연산의 결과를 반환하는 함수 구현


```swift
enum Arithmetic
{
    case addition, subtraction, multiplication, division
    
    func calcul(a: Int,  b: Int) -> Int {
        switch self {
        case .addition: return a + b
        case .subtraction: return a - b
        case .multiplication: return a * b
        case .division: return a / b
        }
    }
    
    
}

let result = Arithmetic.addition.calcul(a: 4, b: 7)
result
```



---





[ 도전 과제 ]

1.온도 3가지 케이스를 가진 enum 타입 Temperature 를 정의
각 케이스에는 Double 타입의 Associated Value 를 받도록 함
//추가로 Temperature 타입 내부에 각 온도를 섭씨 온도로 변환해주는 toCelcius() 함수를 구현
//섭씨 = (화씨 - 32) * 5 / 9
//섭씨 = 켈빈 + 273
 
```swift
enum Temperature : Double
{
    case celcius, fahrenheit, kelvin

    func toCelcius(a : Double) -> Double
    {
        switch self
        {
        case .fahrenheit: return (a - 32) * 5 / 9
        case .kelvin: return a + 273
        case .celcius: return a
        }
    
    }
}

let temper = Temperature.fahrenheit.toCelcius(a: 33.6)
temper
```
