 1. width, height 속성을 가진 Rectangle 클래스 정의
 2. 생성자에서 width, height 프로퍼티 값을 설정할 수 있도록 구현
 3. 사각형의 가로 세로 길이를 설정할 수 있는 메서드 구현
 4. 사각형 가로와 세로의 길이를 반환하는 메서드 구현
 5. 사각형의 넓이를 반환하는 메서드 구현
 6. 다음과 같은 속성을 지닌 인스턴스 생성
	 - 직사각형 1개 속성: width = 10, height = 5
 	- 정사각형 1개 속성: width = 7, height = 7

```swift
class Rectangle {
    
    var width = 0.0, height = 0.0 //1
    
    init(width:Double, height:Double) { //2.
        self.width = width
        self.height = height
    }
    
    func set(a:Double, b:Double){ //3.
        width = a
        height = b
    }
    
    func len( ) -> (Double, Double) { //4.
        return (width, height)
    }
    
    func area() -> Double { //5.
        return width*height
    }

   
}
var rec = Rectangle(width: 1, height: 3)

rec.set(a: 2, b: 3)

rec.set(a: 10, b: 5) //6.
rec.set(a: 7, b: 7)
```
</br>

 1. 채널 정보, Volume 값, 전원 설정여부를 속성으로 가지는 클래스 정의
 2. TV 의 현재 채널 및 볼륨을 변경 가능한 메서드 구현
 3. TV 의 현재 채널 및 볼륨을 확인할 수 있는 메서드 구현
 4. TV 전원이 꺼져있을 때는 채널과 볼륨 변경을 할 수 없도록 구현
    (직접 프로퍼티에 값을 설정할 수 없다고 가정)
 5. TV 전원이 꺼져있을 때는 채널과 볼륨 정보를 확인했을 때 -1 이 반환되도록 구현


```swift
class TV {
    var channel:Int = 0, Volume:Int = 0  //1.
    var power:Bool = true
    
    func channelVolume(a:Int, b:Int) {  //2.
        if self.power {
            channel = a
            Volume = b
        } else {
            print("전원이 꺼져있습니다.")
        }
     
    }
    
    var checkCh_Vol : (Int, Int) { //3.
        if self.power {
        
            return (channel, Volume)
        
        } else {
            return (0,0)
        }
        
    }
    
    func tvPower() { //4.
        if self.power {
            print("채널/볼륨 변경이 가능합니다.")
        } else {
            print("채널/볼륨을 변경할 수 없습니다.")
            
            channel = -1  //5.
            Volume = -1
        }
    }
    
    
}
var myTV = TV.init()

myTV.power = false
myTV.tvPower()
```

</br>

 1. 사각형의 길이를 설정하는 초기화 메서드, 둘레와 넓이값을 구하는 메서드 구현
 2. 원의 반지름을 설정하는 초기화 메서드, 둘레와 넓이값을 구하는 메서드 구현


```swift
class Square {
    
    var W = 0
    var H = 0
    
    init(W:Int, H:Int) {
        self.W = W
        self.H = H
    }
    
    func squareOutput() {
     print("둘레 = \(2*(W+H)),넓이 = \(W*H)")
    }
    
}

var square = Square(W: 5, H: 7)
square.squareOutput()


class Circle {
    
    var r = 0.0
    let pi = 3.14
        
        init(r:Double) {
            self.r = r
        }
        
        func circleOutput() {
         print("둘레 = \(2*r*pi),넓이 = \(r*r*pi)")
        }
        
    }

var circle = Circle(r:4.5)
circle.circleOutput()
```


