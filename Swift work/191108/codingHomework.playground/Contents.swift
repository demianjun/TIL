import UIKit

//이름과 나이를 입력 받아 자신을 소개하는 글을 출력하는 함수

func inputInfor(name:String, age:Int) -> String{
     print("\(name), \(String(age))")
    return "저는 \(name)이고 나이는 \(String(age))입니다."
}

let result = inputInfor(name: "Demian", age: 35)
print("\(result)")

//:---

//정수를 하나 입력받아 2의 배수 여부를 반환하는 함수

func inputInt(intNum:Int) -> Bool {
    var check:Bool
    
    if intNum%2 == 0 {
        check = true
    } else {
        check = false
    }
    return Bool(check)
}

let result1 = inputInt(intNum: 54)
print("\(result1)")

//:---

//정수를 두 개 입력 받아 곱한 결과를 반환하는 함수 (파라미터 하나의 기본 값은 10)

func multiple(a:Int = 10, Num2 b:Int) -> Int {
    print(a, b)
    return a * b
}

let result3 = multiple(Num2: 7)
print("\(result3)")


//:---

//4과목의 시험 점수를 입력받아 평균 점수를 반환하는 함수

func examAverage(_ grade:Double ...) -> Double {
    var total = 0.0
    for subject in grade{
        total += subject
    }
    return total / Double(grade.count)
}
let result4 = examAverage(67.2, 45.5, 91, 88.7)
print("\(result4)")

//:---

//점수를 입력받아 학점을 반환하는 함수 만들기 (90점 이상 A, 80점 이상 B, 70점 이상 C, 그 이하 F)

func classGrade(subGrade a: Double) -> String {
    
    switch a {
    case a where a >= Double(90) :
        return String("A")
    case a where a >= Double(80) :
        return String("B")
    case a where a >= Double(70) :
        return String("C")
    default:
        return String("F")
    }
}
let result5 = classGrade(subGrade: 67.2)
print("\(result5)")

//:---

//가변 인자 파라미터를 이용해 점수를 여러 개 입력받아 평균 점수에 대한 학점을 반환하는 함수
//(90점 이상 A, 80점 이상 B, 70점 이상 C, 그 이하 F)

func classGrades(_ inputGrades: Double ...) -> String {
    
    func subGrades(_ inputGrades: [Double]) -> Double {
        var total = 0.0
        for subject in inputGrades {
            total += subject
        }
        
        return total / Double(inputGrades.count)
    }
    
    let interResult = subGrades(inputGrades)
    print("\(String(interResult))")

    switch interResult {
    case interResult where interResult >= Double(90) :
        return String("A")
    case interResult where interResult >= Double(80) :
        return String("B")
    case interResult where interResult >= Double(70) :
        return String("C")
    default:
        return String("F")
    }
    
}

let resutl6 = classGrades(87.5, 92.4, 66.1, 78.3)
print("\(String(resutl6))")




