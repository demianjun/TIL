//: [Previous](@previous)
import Foundation

/*:
 ---
 ## Practice
 ---
 */

/*
 [ 1번 문제 ]
 let numbers = [-2, -1, 0, 1, 2]
 numbers.compactMap { $0 >= 0 ? $0 : nil }
 => [0, 1, 2]
 
 위와 같이 compactMap을 이용했을 때와 동일한 결과가 나오도록 compactMap 없이 구현
 */

print("\n---------- [ 1번 문제 ] ----------\n")

let numbers = [-2, -1, 0, 1, 2]

let custom = numbers.filter { num in
    num >= 0
}
print(custom)


/*
 [ 2번 문제 ]
 
 let nestedArr = [[1, 2, 3], [9, 8, 7], [-1, 0, 1]]
 nestedArr.flatMap { $0 }
 => [1, 2, 3, 9, 8, 7, -1, 0, 1]
 
 위와 같이 flatMap을 이용했을 때와 동일한 결과가 나오도록 flatMap 없이 구현
 */

print("\n---------- [ 2번 문제 ] ----------\n")

let nestedArr = [[1, 2, 3], [9, 8, 7], [-1, 0, 1]]

let resultArr = nestedArr.reduce([]) { (result, value) in
    result + value
}
print(resultArr)




/*
 [ 3번 문제 ]
 Q. map 과 flatMap, compactMap 을 이용하여 다음 3가지 결과값이 나오도록 출력해보기
 
 1. [[1, 2, 3], [5], [6], []]
 2. [Optional(1), Optional(2), Optional(3), nil, Optional(5), Optional(6), nil, nil] 
 3. [1, 2, 3, 5, 6]
 */

print("\n---------- [ 3번 문제 ] ----------\n")

let array: [[Int?]] = [[1, 2, 3], [nil, 5], [6, nil], [nil]]

print("\n---------- [ 3-1번 문제 ] ----------\n")
let removeNilArr = array.map { (arr: [Int?]) in
    arr.compactMap { (result) in
        return result
    }
}
print(removeNilArr)


print("\n---------- [ 3-2번 문제 ] ----------\n")
let optionalArr = array.flatMap { (arr: [Int?]) in
    arr
}
print(optionalArr)


print("\n---------- [ 3-3번 문제 ] ----------\n")

let optionalRemoveArr = array.flatMap { (arr: [Int?]) in
    arr
}.compactMap { (arr) in
    arr
}
print(optionalRemoveArr)




//: [Next](@next)
