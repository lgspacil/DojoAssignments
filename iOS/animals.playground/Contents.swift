//: Playground - noun: a place where people can play

import UIKit


class Animal {
    let name : String
    var health : Int = 100
    
    init(name: String){
        self.name = name
    }
    
    func displayHealth(){
        print("Hello my name is, \(name), and I have a health of \(health)")
    }
}



class Cat: Animal {
    
    
    
    init(catName: String){
        super.init(name: catName)
        self.health = 150
    }
    
    func growl(){
        print("Rawr!")
    }
    
    func run(){
        print("Running")
        self.health -= 10
    }

    
}



class Lion: Cat {
    
    init(lionName: String){
        super.init(catName:lionName)
        self.health = 200
    }
    
    override func growl() {
        print("ROAR")
    }
    
    
}

class Cheetah: Cat {
    
    init(cheetahName: String){
        super.init(catName: cheetahName)
    }
    
    override func run() {
        print("Running fast")
        self.health -= 50
    }
    
    func sleep(){
        print("Sleeping")
        if self.health < 200{
            if self.health + 50 > 200{
                self.health = 200
            }
            else{
               self.health += 50
            }
        }
    }
}

let simba = Lion(lionName: "simba")
simba.run()
simba.displayHealth()

let spots = Cheetah(cheetahName: "spots")
spots.sleep()
spots.displayHealth()
spots.sleep()
spots.displayHealth()
