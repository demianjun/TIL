import UIKit



//[ 과제 ]
//자연수를 입력받아 원래 숫자를 반대 순서로 뒤집은 숫자를 반환하는 함수
//ex) 123 -> 321 , 10293 -> 39201


func inputNum(num:Int)
{
    let numToString = String(num)
    for int in numToString.reversed()
    {
        print(int, terminator: "")
    }
}
inputNum(num:278)


//---


//100 ~ 900 사이의 숫자 중 하나를 입력받아 각 자리의 숫자가 모두 다른지 여부를 반환하는 함수
//ex) true - 123, 310, 369   /  false - 100, 222, 770


func checkDiffNum(a: Int) -> Bool
{
    var arr:[Character] = []
    let numToElement = String(a)
    
        for j in numToElement
        {
            arr.append(j)
       
        }
    
        if (arr[0] != arr[1] && arr[1] != arr[2] && arr[0] != arr[2]) == true
        {
            return true
        } else {
            return false
        }
    
}

checkDiffNum(a: 133)
print()
print()

//---


//[ 도전 과제 ]
//- 주어진 문자 배열에서 중복되지 않는 문자만을 뽑아내 배열로 반환해주는 함수
//  ex) ["a", "b", "c", "a", "e", "d", "c"]  ->  ["b", "e" ,"d"]


var saveArr:[String] = []

func compareArr(defaultArr:[String]) -> [String] {
    for i in defaultArr {
        if defaultArr.firstIndex(of: i) == defaultArr.lastIndex(of: i) {
            saveArr.append(i)
        }
    }
    return saveArr
}

let result = compareArr(defaultArr: ["a", "b", "c", "a", "e", "d", "c"])


//---


//- 별도로 전달한 식육목 모식도 라는 자료를 보고 Dictionary 자료형에 맞도록 중첩형태로 데이터를 저장하고
//  + 해당 변수에서 표범 하위 분류를 찾아 사자와 호랑이를 출력하기

let 동물 = [
    "식육목" :[
        "개과":[
            "개":["자칼", "늑대", "북미산이리"],
            "여우":["아메리카 여우", "유럽 여우"]
             ],
        "고양이과":[
            "고양이":["고양이", "살쾡이"],
            "표범":["사자", "호랑이"]
                ]
            ]
        ]
print(동물["식육목"]!["고양이과"]!["표범"]!)
