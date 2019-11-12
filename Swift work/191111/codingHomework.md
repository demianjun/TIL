


[ 과제 ]
두 개의 자연수를 입력받아 두 수를 하나의 숫자로 이어서 합친 결과를 정수로 반환하는 함수 (1과 5 입력 시 15,  29와 30 입력 시 2930,  6과 100 입력 시 6100)

```swift
func inputTwoNum(num1:Int, num2:Int) {
    print("\(num1)" + "\(num2)")
}

inputTwoNum(num1: 12, num2: 51)
```


---
문자열 두 개를 입력받아 두 문자열이 같은지 여부를 판단해주는 함수

```swift
func inputTwoString(Str1:String, Str2:String) {
    
    if Str1 == Str2 {
        print("true")
    } else {
        print("false")
    }
}

//inputTwoString(Str1: "Super", Str2: "Star")
inputTwoString(Str1: "Super", Str2: "Super")
```

---
자연수를 입력받아 그 수의 약수를 모두 출력하는 함수

```swift
func inputNaturalNum(num : Int) {

    var i = 0
    
    while i <= num {
        i += 1
        if num%i == 0 {
        print(i)
        }
    }
}

inputNaturalNum(num: 2)
```

---
100 이하의 자연수 중 3과 5의 공배수를 모두 출력하는 함수

```swift
func LCM(multiple3:Int = 3, multiple5:Int = 5) { //LCM = 최소공배수
    
    let lcm = multiple3 * multiple5
    var i = 0, j = 1
    
    
    while lcm*i < 90 {
        i += 1
        j = lcm*i
        print(j)
        
    }
}

LCM()

```

--
--
--

[ 도전 과제 ]
2 이상의 자연수를 입력받아, 소수인지 아닌지를 판별하는 함수

```swift
func inputNumOverTwo(NaturalNum:Int){
    
    if (NaturalNum%2 == 0) {
        print("합성수")
    } else if (NaturalNum%3 == 0){
        print("합성수")
    }  else if (NaturalNum%5 == 0){
        print("합성수")
    }  else if (NaturalNum%7 == 0){
        print("합성수")
    } else {
        print("소수")
    }
}
inputNumOverTwo(NaturalNum: 37)
```

---
자연수 하나를 입력받아 피보나치 수열 중에서 입력받은 수에 해당하는 자리의 숫자를 반환하는 함수
(참고로 피보나치 수열은 이전 두 수의 합이 다음 수가 되는 수열
e.g.  0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89 ....
함수 호출 시 입력받은 숫자가 4인 경우 피보나치 수열의 4번째 위치인 2 출력)

```swift
func oneNaturalNum(_ Num: Int) -> Int {
    
    func fibSquence(_ n1: Int, _ n2: Int, _ Num: Int) -> Int {
        if Num == 1 { return n1 }
        return fibSquence(n2, n1+n2, Num - 1)
    }
    return fibSquence(0,1,Num)
}

oneNaturalNum(4)
```


---
정수를 입력받아 윤년(2월 29일이 있는 해)인지 아닌지 판단하는 함수
(공식 - 매 4년 마다 윤년. 매 100년 째에는 윤년이 아님. 매 400년 째에는 윤년)
ex) 윤년O 예시 - 160, 204, 400, 1996, 2000, 2800
    윤년X 예시 - 200, 300, 500, 600, 1900, 2100 (edited)


```swift
func inputYear(year: Int) {
    
    //let right:Bool =
    
    if (year%4 + year%400) == 0 {
        print("윤달입니다.")
    } else if (year%4 + year%100) == 0 {
        print("윤달이 아닙니다.")
    }
    
}
inputYear(year: 400)
```
