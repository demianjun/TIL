import UIKit



class Animal {
    
    var brain = true
    var leg = 4

    func think() {
        print("==Animal==")
        print("곰곰")
    }
    
    func comunication() {
        print("Various ways")
        
    }
    
}

let ani = Animal()
ani.brain
ani.leg
ani.think()
ani.comunication()



class Human:Animal {

    
    init(_ leg:Int) {
        super.init()
        self.leg = leg
    }
    
//    override var leg: Int {
//        get { super.leg }
//        set { super.leg = newValue }
//    }
    
    override func think() {
        print("==Human==")
        print("논리적으로")
        
    }

    override func comunication() {
        print("Use language")
        
    }
    
    
}
let hum = Human(2)
//hum.leg -> get, set으로 사용할 경우 필요
hum.leg
//hum.leg
hum.think()
hum.comunication()




class Pet:Animal {
    
    var fleas = 0
    
    override func think() {
        print("==Pet==")
        print("음식생각")
    }
    
    override func comunication() {
        print("Cry")
    }
    
    func lovely (){
        print("얘교부리기")
        
    }
    
    
}

let pet = Pet()
pet.leg
pet.fleas
pet.think()
pet.comunication()
pet.lovely()


class Dog:Pet {
    
    
    init(_ fleas:Int) {
           super.init()
           self.fleas = fleas
       }
    
//    override var fleas: Int {
//        get{ pet.fleas }
//        set{ pet.fleas = newValue }
//    }
    
    override func think() {
        print("==Dog==")
        print("주인님 최고")
    }
    
    override func comunication() {
        print("Use Nose")
    }
    
    override func lovely() {
        print("Shake Tail")
        
    }
    
}

let dog = Dog(8)
dog.leg
dog.fleas
dog.think()
dog.comunication()
dog.lovely()

class Cat:Pet {
    
     init(_ fleas:Int) {
              super.init()
              self.fleas = fleas
          }
    override func think() {
        print("==Cat==")
        print("내가 최고")
    }
    override func comunication() {
        print("mustache")
    }
    override func lovely() {
        print("BoobyBooby")
    }
}

let cat = Cat(4)
cat.leg
cat.fleas
cat.think()
cat.comunication()
cat.lovely()
