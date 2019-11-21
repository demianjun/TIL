1. 정수 하나를 입력받은 뒤, 해당 숫자와 숫자 1사이에 있는 모든 정수의 합계 구하기

e.g.  5 -> 1 + 2 + 3 + 4 + 5 = 15,   -2 -> -2 + -1 + 0 + 1 = -2


```swift
func 계산(gaus:Int) {
    
    var result = 0
    
    for i in 1...abs(gaus) {
        result += i
    }
    if gaus > 0 {
    print(result)
    } else {
    print(-(result - 1))
    }
}
계산(gaus: -10)
```


```swift
2. 숫자를 입력받아 1부터 해당 숫자까지 출력하되, 3, 6, 9가 하나라도 포함되어 있는 숫자는 *로 표시
e.g.  1, 2, *, 4, 5, *, 7, 8, *, 10, 11, 12, *, 14, 15, * ...


func gameOf369(clap:Int) {
    
    
    for i in 1...clap {
        
        if ((i - 3)%10 == 0) == true {
            print("*")
        } else if ((i - 6)%10 == 0) == true {
            print("*")
        } else if ((i - 9)%10 == 0) == true {
            print("*")
        } else {
            print(i)
        }
        
    }
}
    
gameOf369(clap: 5)
```

