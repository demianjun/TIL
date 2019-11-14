<1> [보기] 철수 - apple, 영희 - banana, 진수 - grape, 미희 - strawberry
위 보기처럼 학생과 좋아하는 과일을 매칭시킨 정보를 Dictionary 형태로 만들고 스펠링에 'e'가 들어간 과일을 모두 찾아 그것과 매칭되는 학생 이름을 배열로 반환하는 함수

```swift
let favFruit = ["철수":"apple", "영희":"banana", "진수":"grape", "미희":"strawberry"]

var fruitKey = [String]()


for dic in favFruit {
    for j in dic.value {
        if j == "e"
        {
            fruitKey.append(dic.key)
        }
    }
}
fruitKey
```

---


<2>
임의의 정수 배열을 입력받았을 때 홀수는 배열의 앞부분, 짝수는 배열의 뒷부분에 위치하도록 구성된 새로운 배열을 반환하는 함수
ex) [2, 8, 7, 1, 4, 3] -> [7, 1, 3, 2, 8, 4]

```swift
var resultArray = [Int]()

func randomInt(array:[Int]) {
    for value1 in array {
        let i = value1%2
            if (i == 1) {
                resultArray.insert(value1, at: 0)
            } else {
                resultArray.append(value1)
        }
    }
    print(resultArray)
}

randomInt(array: [21, 15, 7, 1, 4, 3, 8])
```


---



<3>
0 ~ 9 사이의 숫자가 들어있는 배열에서 각 숫자가 몇 개씩 있는지 출력하는 함수
입력 : [1, 3, 3, 3, 8]
결과 : "숫자 1 : 1개, 숫자 3 : 3개, 숫자 8 : 1개"


```swift
let compareArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
var countArr = [(Int, Int)]()

func countArrayNum0(array0:[Int])
{
   for i in array0
    {
        for j in compareArr
        {
            var count = 0
            print(j, i)
            if j == i
            {
                count += 1
                print(count)
            countArr.append((i, count))
            }

        }

    }
    print(countArr)
}
countArrayNum0(array0: [1, 3, 3, 3, 8])]
// tuple로 도전




func countArrayNum1(array1:[Int])
{
//    var dict : Dictionary<Int, Int> = Dictionary()
    var dict : [Int:Int] = [:]
    
    for i in array1
    {
        dict[i]
        
       
        if dict[i] == nil
        {
            dict[i] = 1
        }
        else
        {
            dict[i] = dict[i]! + 1
        }
        
    }
    print(dict)
}


countArrayNum1(array1: [1, 3, 3, 3, 8])
// dictionary로 도전

```