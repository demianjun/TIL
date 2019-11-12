# TIL
Today I Learned..

### 191112
swift practice


 ---
 ## Conditional Statements
 ---

 - 학점을 입력받아 각각의 등급을 반환해주는 함수 (4.5 = A+,  4.0 = A, 3.5 = B+ ...)
 - 특정 달을 숫자로 입력 받아서 문자열로 반환하는 함수 (1 = "Jan" , 2 = "Feb", ...)
 - 세 수를 입력받아 세 수의 곱이 양수이면 true, 그렇지 않으면 false 를 반환하는 함수
   (switch where clause 를 이용해 풀어볼 수 있으면 해보기)


//:---

func 등급(학점:Double) -> String {
    if 학점 == 4.5 {
        return "A+"
    } else if  학점 == 4.0{
        return "A"
    } else if  학점 == 3.5{
        return "B"
    } else if  학점 == 3.0{
        return "B"
    } else if  학점 == 2.5{
        return "C+"
    } else if  학점 == 2.0{
        return "C"
    } else {
        return "F"
    }
}

등급(학점: 3.0)

//: ----
달을 정술 입력받아 문자로 출력하기

func transMonth(month: Int) -> String {
    switch month {
    case month where month == 1:
        return "Jan"
    case month where month == 2:
        return "Feb"
    case month where month == 3:
        return "Mar"
    case month where month == 4:
        return "Apr"
    case month where month == 5:
        return "May"
    case month where month == 6:
        return "Jun"
    case month where month == 7:
        return "Jul"
    case month where month == 8:
        return "Aug"
    case month where month == 9:
        return "Setp"
    case month where month == 10:
        return "Oct"
    case month where month == 11:
        return "Nov"
    default:
        return "Dec"
    }
    
}
transMonth(month: 12)
//:---

세 수를 입력받아 세 수의 곱이 양수이면 true, 그렇지 않으면 false 를 반환하는 함수
(switch where clause 를 이용해 풀어볼 수 있으면 해보기)

func inputThreeNum(num1:Int, num2:Int, num3:Int) -> Bool {
    let multiNum = num1*num2*num3
    switch multiNum {
    case multiNum where multiNum > 0:
        return true
    default:
        return false
    }
    
}

inputThreeNum(num1: -27, num2: -11, num3: 3)

 ---
 ## Loops
 ---

 반복문(for , while , repeat - while)을 이용해 아래 문제들을 구현해보세요.
 - 자연수 하나를 입력받아 그 수의 Factorial 을 구하는 함수
   (Factorial 참고: 어떤 수가 주어졌을 때 그 수를 포함해 그 수보다 작은 모든 수를 곱한 것)
   ex) 5! = 5 x 4 x 3 x 2 x 1
 - 자연수 두 개를 입력받아 첫 번째 수를 두 번째 수만큼 제곱하여 반환하는 함수
   (2, 5 를 입력한 경우 결과는 2의 5제곱)
 - 자연수 하나를 입력받아 각 자리수 숫자들의 합을 반환해주는 함수
   (1234 인 경우 각 자리 숫자를 합치면 10)



func 팩토리얼계산(num:Int) -> Int {
    var result = num
    var fact = num - 1
    
    for _ in 2...num {
        result *= fact
        fact -= 1
        
    }
    return result
}
팩토리얼계산(num: 8)

//:---

자연수 두 개를 입력받아 첫 번째 수를 두 번째 수만큼 제곱하여 반환하는 함수
(2, 5 를 입력한 경우 결과는 2의 5제곱)

func 제곱하자(밑:Int, 지수:Int) -> Int {
    var i = 1
    var reuslt = 밑
    
    while i < 지수 {
        reuslt *= 밑
        i += 1
    }
    return reuslt
}

제곱하자(밑: 7, 지수: 3)

//:---

자연수 하나를 입력받아 각 자리수 숫자들의 합을 반환해주는 함수
(1234 인 경우 각 자리 숫자를 합치면 10)

func 자연수입력(input:Int) -> Int {
    
    var n = input
    var sum = 0
    
    while(n != 0){
        
        sum += n%10
        n = n/10

    }
    return sum
}

자연수입력(input: 12048)

 ---
 ## Control Transfer
 ---

 - 자연수 하나를 입력받아 1부터 해당 숫자 사이의 모든 숫자의 합을 구해 반환하는 함수를 만들되,
   그 합이 2000 을 넘는 순간 더하기를 멈추고 바로 반환하는 함수
 - 1 ~ 50 사이의 숫자 중에서 20 ~ 30 사이의 숫자만 제외하고 그 나머지를 모두 더해 출력하는 함수



func inputOneNum(드루와: Int) -> Int {
  var i = 1
  var j = 0
 
         repeat {
            j += i
            i += 1
            
            if(j >= 2000) {
                break
            }
            
        } while i <= 드루와
       return j
    }

inputOneNum(드루와: 100)


1 ~ 50 사이의 숫자 중에서 20 ~ 30 사이의 숫자만 제외하고 그 나머지를 모두 더해 출력하는 함수


func 오십까지더하기(num1:Int) -> Int {
    
    var i1 = 1
    var j1 = 0
    var i2 = 20
    var j2 = 0
      
        repeat {
            j1 += i1
            i1 += 1
        } while i1 <= num1
    
    repeat {
        j2 += i2
        i2 += 1
    } while i2 <= 30
    
        return j1 - j2
    
}

오십까지더하기(num1: 50)


