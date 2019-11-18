import UIKit


//1. 다음과 같은 속성(Property)과 행위(Method)를 가지는 클래스 만들어보기.
//   구현 내용은 자유롭게

// ** 강아지 (Dog)
// - 속성: 이름, 나이, 몸무게, 견종
// - 행위: 짖기, 먹기

class Dog {
    var name = "Arongi"
    var age = "4"
    var weight = "11"
    var kind = "말티즈"
    
    func yelp() {
        print("BowWow!")
    }
    
    func eat() {
        print("Eat!")
    }
    
}

let dog = Dog()
dog.eat()

// ** 학생 (Student)
// - 속성: 이름, 나이, 학교명, 학년
// - 행위: 공부하기, 먹기, 잠자기

class Student {
    var name = "철수"
    var age = "17"
    let schoolName = "패캠고등학교"
    var grade = "2"
    
    func learn() {
        print("공부중")
    }
    
    func eat() {
        print("식사중")
    }
    func sleep() {
        print("자는중")
    }

}

let stu = Student()
stu.sleep()

// ** 아이폰(IPhone)
// - 속성: 기기명, 가격, faceID 기능 여부(Bool)
// - 행위: 전화 걸기, 문자 전송


class iPhone {
    var device = "iPhoneX"
    var price = "1,500,000"
    var faceID = true
    
    func call() {
        print("전화거는중")
    }
    
    func sendMg() {
        print("메세지 전송중")
    }
    
}

let phone = iPhone()
phone.call()


// ** 커피(Coffee)
// - 속성: 이름, 가격, 원두 원산지

class Coffee {
    var name = "Americano"
    var price = "3,500"
    var origin = "콜롬비아"

}

let coff = Coffee()
coff.name



//2. 계산기 클래스를 만들고 다음과 같은 기능을 가진 Property 와 Method 정의해보기
// ** 계산기 (Calculator)
// - 속성: 현재 값
// - 행위: 더하기, 빼기, 나누기, 곱하기, 값 초기화
// ex)
// let calculator = Calculator() // 객체생성
//
// calculator.value  // 0
// calculator.add(10)    // 10
// calculator.add(5)     // 15
//
// calculator.subtract(9)  // 6
// calculator.subtract(10) // -4
//
// calculator.multiply(4)   // -16
// calculator.multiply(-10) // 160
//
// calculator.divide(10)   // 16
// calculator.reset()      // 0



class Calculator {
    var add = 0
    var subtract = 0
    var multiply = 0
    var divide = 0
    var value = 0
    
    init() {
        value
    }
    
    func add(a:Int) -> Int {
        add = a
        value = value + add
        return value
    }
    
    func subtract(a:Int) -> Int {
        subtract = a
        value = value - subtract
        return value
    }
    
    func multyply(a:Int) -> Int {
        multiply = a
        value = value * multiply
        return value
    }
    
    func divide(a:Int) -> Int {
        divide = a
        value = value / divide
        return value
    }
    
    func reset() -> Int {
        value = 0
        return value
    }
    
}

let cal = Calculator()
cal.value
cal.add(a: 10)
cal.add(a: 5)

cal.subtract(a: 9)
cal.subtract(a: 10)

cal.multyply(a: 4)
cal.multyply(a: -10)

cal.divide(a: 10)
cal.reset()





//3. 첨부된 그림을 참고하여 각 도형별 클래스를 만들고 각각의 넓이, 둘레, 부피를 구하는 프로퍼티와 메서드 구현하기
 
 class Square {
    var a = 0.0
 
    func 둘레() {
        print("둘레는 ", 4*a,"입니다")
    }
 
    func 넓이() {
        print("넓이는 ", a*a,"입니다.")
    }
    func 부피() {
        print("부피는 존재하지 않습니다.")
    }
 
 }

let squ = Square()
squ.a = 4.2
squ.둘레()
squ.넓이()
squ.부피()




  class Rectangle {
    var a = 0.0
    var b = 0.0
  
     func 둘레() {
         print("둘레는 ", 2*(a+b),"입니다")
     }
  
     func 넓이() {
         print("넓이는 ", a*b,"입니다.")
     }
     func 부피() {
         print("부피는 존재하지 않습니다.")
     }
  
  }

 let rec = Rectangle()
 rec.a = 4.2
 rec.b = 5.5
 rec.둘레()
 rec.넓이()
 rec.부피()
 
 
class Circle {
   var r = 0.0
   let pi = 3.14
 
    func 둘레() {
        print("둘레는 ", 2*r*pi,"입니다")
    }
 
    func 넓이() {
        print("넓이는 ", r*r*pi,"입니다.")
    }
    func 부피() {
        print("부피는 존재하지 않습니다.")
    }
 
 }

let cir = Circle()
cir.r = 4.2
cir.둘레()
cir.넓이()
cir.부피()





 class Triangle {
    var a = 0.0
    var b = 0.0
    var c = 0.0 //제일 긴변
    var h = 0.0
  
     func 둘레() {
         print("둘레는 ", a*b*c,"입니다")
     }
  
     func 넓이() {
         print("넓이는 ", c*h/2,"입니다.")
     }
     func 부피() {
         print("부피는 존재하지 않습니다.")
     }
  
  }

 let tri = Triangle()
tri.a = 4.2
tri.b = 3.5
tri.c = 6.8
tri.h = 4.2
 tri.둘레()
 tri.넓이()
 tri.부피()





class Trapezoid {
    var a = 0.0
    var b = 0.0
    var lS = 0.0
    var rS = 0.0
    var h = 0.0
  
     func 둘레() {
         print("둘레는 ", a+b+lS+rS,"입니다")
     }
  
     func 넓이() {
         print("넓이는 ", (a+b)*h/2,"입니다.")
     }
     func 부피() {
         print("부피는 존재하지 않습니다.")
     }
  
  }

 let trap = Trapezoid()
trap.a = 6.7
trap.b = 5.8
trap.lS = 8.7
trap.rS = 8.3
trap.h = 7.7
 trap.둘레()
 trap.넓이()
 trap.부피()




 
class Cube {
    var a = 0.0
 
     func 둘레() {
         print("둘레는 ", 12*a,"입니다")
     }
  
     func 넓이() {
         print("넓이는 ", 6*a*a,"입니다.")
     }
     func 부피() {
         print("부피는 ", a*a*a ,"입니다.")
     }
  
  }

 let cu = Cube()
cu.a = 6.7
 cu.둘레()
 cu.넓이()
 cu.부피()
 




class RectangularSolid {
    var a = 0.0
    var b = 0.0
    var c = 0.0
  
     func 둘레() {
         print("둘레는 ", 4*a+4*b+4*c,"입니다")
     }
  
     func 넓이() {
         print("넓이는 ", 2*a*b+2*a*c+2*b*c,"입니다.")
     }
     func 부피() {
         print("부피는 ", a*b*c,"입니다.")
     }
  
  }

 let recSolid = RectangularSolid()
recSolid.a = 6.7
recSolid.b = 5.8
recSolid.c = 8.6
 recSolid.둘레()
 recSolid.넓이()
 recSolid.부피()
 





class CircularCylinder {
    var r = 0.0
    var h = 0.0
    let pi = 3.14
    
     func 둘레() {
         print("둘레는 ", (2*pi*r*2)+(2*pi*r*2)*(h*2),"입니다")
     }
  
     func 넓이() {
         print("넓이는 ", (r*r*pi*2)+(2*r*pi*h),"입니다.")
     }
     func 부피() {
         print("부피는 ", (r*r*pi)*h,"입니다.")
     }
  
  }

 let cirCylinder = CircularCylinder()
cirCylinder.r = 5.8
cirCylinder.h = 11.3
 cirCylinder.둘레()
 cirCylinder.넓이()
 cirCylinder.부피()





 
class Sphere {
    var r = 0.0
    var h = 0.0
    let pi = 3.14
    
     func 둘레() {
         print("둘레는 존재하지 않습니다")
     }
  
     func 넓이() {
         print("넓이는 ", 4*pi*r*r,"입니다.")
     }
     func 부피() {
         print("부피는 ", 4*pi*r*r*r/3,"입니다.")
     }
  
  }

 let sph = Sphere()
sph.r = 5.8
sph.h = 11.3
 sph.둘레()
 sph.넓이()
 sph.부피()





class Cone {
    var a = 0.0
    var r = 0.0
    var h = 0.0
    let pi = 3.14
    let angle = 100
    
     func 둘레() {
         print("둘레 ", 2*a+2*r*pi,"입니다.")
     }
  
     func 넓이() {
         print("넓이는 ", pi*r*r+pi*a*a*(100/360),"입니다.")
     }
     func 부피() {
         print("부피는 ", pi*r*r*h,"입니다.")
     }
  
  }

 let con = Cone()
con.r = 9.8
con.a = 4.3
con.h = 11.3
 con.둘레()
 con.넓이()
 con.부피()
