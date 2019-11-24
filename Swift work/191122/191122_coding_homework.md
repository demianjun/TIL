1. 입력받은 숫자의 모든 자리 숫자 합계를 출력하기
e.g.  123 -> 6 ,  5678 -> 26


```swift
func numbers(Num:Int) {
       
       var num = Num
       var arrayNums:[Int] = []

       while num > 0 {
           let arrayNum = num%10
           arrayNums = [arrayNum] + arrayNums
           num /= 10
         
       }
       
    let sum:Int = arrayNums.reduce(0,{ (first: Int, second: Int) -> Int in
       return first + second
       
       })
    print(sum)
}

numbers(Num: 234)
```
       
</br>
2. 하샤드 수 구하기
- 하샤드 수 : 자연수 N의 각 자릿수 숫자의 합을 구한 뒤, 그 합한 숫자로 자기 자신이 나누어 떨어지는 수
e.g. 18의 자릿수 합은 1 + 8 = 9 이고, 18은 9로 나누어 떨어지므로 하샤드 수.



```swift
func harshadNum(Num1:Int) {
       
       var num1 = Num1
       var arrayNums:[Int] = []

       while num1 > 0 {
           let arrayNum = num1%10
           arrayNums = [arrayNum] + arrayNums
           num1 /= 10
         
       }
       
       let sum1: Int = arrayNums.reduce(0,{ (first: Int, second: Int) -> Int in
       return first + second
       
       })
    
    if Num1%sum1 == 0 {
        print("True")
    } else {
        print("False")
    }
    
}

harshadNum(Num1: 17)
```