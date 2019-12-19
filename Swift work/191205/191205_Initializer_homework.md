

```swift

import UIKit


//1. 다음과 같이 정의된 변수 task1이 있을 때 다음의 더하기 연산이 제대로 동작하도록 할 것

func addTwoValues(a: Int, b: Int) -> Int {
    return a + b
}
let task1: Any = addTwoValues(a: 2, b: 3)
//print(task1)

//(task1 as? Int)! + (task1 as? Int)!

if let task1 = task1 as? Int {
    print(task1 + task1)
}


// 도전과제
//1. 과제 1번에 이어 이번에는 위와 같이 정의된 task2 변수에 대해
//두 변수의 더하기 연산이 제대로 동작하도록 할 것
//(addTwoValues의 각 파라미터에는 원하는 값 입력)
//task2 + task2


let task2: Any = addTwoValues(a: 14, b: 5)
//(task2 as? Int)! + (task2 as? Int)!

if let task2 = task2 as? Int {
    print(task2 + task2)
}


//2.
class Car {}
let values: [Any] = [
    0,   //Int
    0.0, //Double
    (2.0, Double.pi), //tuple
    Car(), //class
    { (str: String) -> Int in str.count } //closure
]

type(of: values[0])
type(of: values[1])
type(of: values[2])
type(of: values[3])
type(of: values[4])
//위 values 변수의 각 값을 switch 문과 타입캐스팅을 이용해 출력하기

for (index, value) in values.enumerated() {
    switch value {
    case let i where i as? Int != nil:
        print(i, index)
    case let i where i as? Double != nil:
        print(i, index)
    case let i where i as? (Double, Double) != nil:
        print(i, index)
    case let i where i as? Car != nil:
        print(i, index)
    case let i where i as? ((String) -> Int) != nil:
        print(i, index)
    default :
        break
    }
}

print()
print()
//Initializer
//[ 과제 ]
//1. 생성자 구현
//- Vehicle 클래스에 지정 이니셜라이져(Designated Initializer) 추가
//- Car 클래스에 modelYear 또는 numberOfSeat가 0 이하일 때 nil을 반환하는 Failable Initializer 추가
//- Bus 클래스에 지정 이니셜라이져를 추가하고, maxSpeed를 100으로 기본 할당해주는 편의 이니셜라이져 추가

class Vehicle {
    let name: String
    let maxSpeed: Int
    
    init() {
        self.name = "뭐 탈래?"
        self.maxSpeed = 40
    }
}

class Car1: Vehicle {
    var modelYear: Int
    var numberOfSeats: Int
    
    
    init?(modelYear: Int, numberOfSeats: Int) {
        guard  modelYear <= 0 || numberOfSeats <= 0 else { return nil }
        self.modelYear = modelYear
        self.numberOfSeats = numberOfSeats
        super.init()
    }
}


class Bus: Vehicle {
    let isDoubleDecker: Bool
    
    init(isDoubleDecker: Bool) {
        self.isDoubleDecker = isDoubleDecker
        super.init()
    }
    
    convenience init(maxSpeed: Int) {
        self.init(maxSpeed: 100)
    }
}

let callVehicle = Vehicle()
if let oldYear = Car1(modelYear: 3, numberOfSeats: 2) {
    oldYear
} else {
    print("nil")
}
let callBus = Bus(maxSpeed: 60)



```

